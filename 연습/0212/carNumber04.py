import os
import cv2
import numpy as np
import pandas as pd
import easyocr
import re
from ultralytics import YOLO

# -----------------------------
# 1. 설정 및 모델 로드
# -----------------------------
yolo_model_path = r"C:\Users\SAMSUNG\Documents\AIOT\0212\custom_plate_yolo.pt"
folder_path = r"C:\Users\SAMSUNG\Documents\AIOT\0212\images\test_car"
excel_path = os.path.join(folder_path, "plate_results_final_viz.xlsx")

reader = easyocr.Reader(['ko', 'en'], gpu=False)
model = YOLO(yolo_model_path)

def refine_plate_text(text_list):
    """OCR 결과 정제 로직"""
    candidates = []
    for text in text_list:
        cleaned = re.sub(r'[^0-9가-힣]', '', text)
        if len(cleaned) >= 5:
            candidates.append(cleaned)
    return max(candidates, key=len) if candidates else "".join(text_list)

results_list = []

# -----------------------------
# 2. 이미지 프로세싱 루프
# -----------------------------
for filename in os.listdir(folder_path):
    if not filename.lower().endswith((".jpg", ".jpeg", ".png")):
        continue

    img = cv2.imread(os.path.join(folder_path, filename))
    if img is None: continue
    
    # 시각화용 원본 복사본
    display_img = img.copy()

    results = model.predict(img, conf=0.4, verbose=False)
    
    if not results or len(results[0].boxes) == 0:
        print(f"[{filename}] 검출 실패")
        results_list.append({"filename": filename, "plate_text": "NOT_FOUND"})
        continue

    # 좌표 추출
    box = results[0].boxes.xyxy[0].cpu().numpy()
    x1, y1, x2, y2 = map(int, box)
    
    # 앞자리 인식을 위한 넉넉한 패딩 (가로 15%, 세로 15%)
    h_pad = int((y2 - y1) * 0.15)
    w_pad = int((x2 - x1) * 0.15)
    
    crop_x1 = max(0, x1 - w_pad)
    crop_y1 = max(0, y1 - h_pad)
    crop_x2 = min(img.shape[1], x2 + w_pad)
    crop_y2 = min(img.shape[0], y2 + h_pad)
    
    crop_img = img[crop_y1:crop_y2, crop_x1:crop_x2]

    # 이미지 확대 및 전처리
    crop_img_resized = cv2.resize(crop_img, None, fx=3.0, fy=3.0, interpolation=cv2.INTER_CUBIC)
    
    # 버전 A: 샤프닝
    kernel = np.array([[0, -1, 0], [-1, 5, -1], [0, -1, 0]])
    img_sharpen = cv2.filter2D(crop_img_resized, -1, kernel)
    
    # 버전 B: CLAHE (대비 강화)
    gray = cv2.cvtColor(crop_img_resized, cv2.COLOR_BGR2GRAY)
    clahe = cv2.createCLAHE(clipLimit=3.0, tileGridSize=(8,8))
    img_clahe = clahe.apply(gray)

    # OCR 실행
    ocr_args = {'detail': 0, 'paragraph': False, 'mag_ratio': 1.5}
    res_a = reader.readtext(img_sharpen, **ocr_args)
    res_b = reader.readtext(img_clahe, **ocr_args)
    
    final_text = refine_plate_text(["".join(res_a), "".join(res_b)])

    # 결과 저장 및 로그 출력
    print(f"[{filename}] 인식 결과: {final_text}")
    results_list.append({"filename": filename, "plate_text": final_text})

    # -----------------------------
    # 3. 결과 시각화 (텍스트 제거 버전)
    # -----------------------------
    # 원본 이미지에는 '녹색 박스'만 표시
    cv2.rectangle(display_img, (x1, y1), (x2, y2), (0, 255, 0), 3)

    # 결과 확인 창
    cv2.imshow("Detection (Original Box Only)", cv2.resize(display_img, (800, 600))) 
    cv2.imshow("OCR Input (Sharpened)", img_sharpen) 
    
    if cv2.waitKey(1200) & 0xFF == ord('q'): # 1.2초 대기
        break

cv2.destroyAllWindows()

# -----------------------------
# 4. Excel 저장
# -----------------------------
df = pd.DataFrame(results_list)
df.to_excel(excel_path, index=False)
print(f"\n✅ 엑셀 저장 완료: {excel_path}")