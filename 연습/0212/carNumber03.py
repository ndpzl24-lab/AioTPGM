import os
import cv2
import numpy as np
import pandas as pd
import easyocr
import re
from ultralytics import YOLO

# 1. 설정
yolo_model_path = r"C:\Users\SAMSUNG\Documents\AIOT\0212\custom_plate_yolo.pt"
folder_path = r"C:\Users\SAMSUNG\Documents\AIOT\0212\images\test_car"
excel_path = os.path.join(folder_path, "plate_results_final_fixed.xlsx")

# GPU를 사용하지 않는 환경에서 가장 안정적인 설정
reader = easyocr.Reader(['ko', 'en'], gpu=False)
model = YOLO(yolo_model_path)

def refine_plate_text(text_list):
    """결과 정제 로직 (숫자-한글-숫자 조합 중심)"""
    candidates = []
    for text in text_list:
        cleaned = re.sub(r'[^0-9가-힣]', '', text)
        if len(cleaned) >= 5:
            candidates.append(cleaned)
    return max(candidates, key=len) if candidates else "".join(text_list)

results_list = []

for filename in os.listdir(folder_path):
    if not filename.lower().endswith((".jpg", ".jpeg", ".png")):
        continue

    img = cv2.imread(os.path.join(folder_path, filename))
    if img is None: continue
    
    display_img = img.copy()
    
    # 사선 검출을 위해 conf를 0.35 정도로 유지 (YOLO가 일단 영역을 잡아야 함)
    results = model.predict(img, conf=0.35, verbose=False)
    
    if not results or len(results[0].boxes) == 0:
        results_list.append({"filename": filename, "plate_text": "NOT_FOUND"})
        continue

    box = results[0].boxes.xyxy[0].cpu().numpy()
    x1, y1, x2, y2 = map(int, box)
    
    # [핵심] 사선을 대비해 상하좌우 여유를 주되, 비율이 깨지지 않게 넉넉히 패딩 (15%)
    # 이 부분이 글자 잘림을 막아 사선 대응력을 높입니다.
    h_pad = int((y2 - y1) * 0.15)
    w_pad = int((x2 - x1) * 0.15)
    
    crop_img = img[max(0, y1-h_pad):min(img.shape[0], y2+h_pad), 
                   max(0, x1-w_pad):min(img.shape[1], x2+w_pad)]

    # [핵심] 원본이 사선일 때 리사이징 과정에서 글자가 뭉개지는 것을 방지하기 위해 
    # 고정 크기 대신 "비율 확대(fx, fy)" 방식을 사용합니다.
    crop_img = cv2.resize(crop_img, None, fx=3.0, fy=3.0, interpolation=cv2.INTER_LANCZOS4)

    # 전처리 A: 샤프닝 (인식률이 가장 좋았던 설정)
    kernel = np.array([[0, -1, 0], [-1, 5, -1], [0, -1, 0]])
    img_sharpen = cv2.filter2D(crop_img, -1, kernel)
    
    # 전처리 B: CLAHE (대비 강화)
    gray = cv2.cvtColor(crop_img, cv2.COLOR_BGR2GRAY)
    clahe = cv2.createCLAHE(clipLimit=3.0, tileGridSize=(8,8))
    img_clahe = clahe.apply(gray)

    # OCR 실행 (가장 잘 되었던 기본 인자로 복구)
    ocr_args = {'detail': 0, 'paragraph': False, 'mag_ratio': 1.5}
    res_a = reader.readtext(img_sharpen, **ocr_args)
    res_b = reader.readtext(img_clahe, **ocr_args)
    
    final_text = refine_plate_text(["".join(res_a), "".join(res_b)])

    print(f"[{filename}] -> {final_text}")
    results_list.append({"filename": filename, "plate_text": final_text})

    # 시각화 (원본 박스만 깔끔하게)
    cv2.rectangle(display_img, (x1, y1), (x2, y2), (0, 255, 0), 3)
    cv2.imshow("Detection", cv2.resize(display_img, (800, 600)))
    cv2.imshow("OCR Input", img_sharpen)
    
    if cv2.waitKey(1000) & 0xFF == ord('q'):
        break

cv2.destroyAllWindows()
pd.DataFrame(results_list).to_excel(excel_path, index=False)