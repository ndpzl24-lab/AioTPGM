import os
import cv2
import numpy as np
import pandas as pd
import easyocr
from ultralytics import YOLO

# -----------------------------
# 설정
# -----------------------------
yolo_model_path = r"C:\Users\SAMSUNG\Documents\AIOT\0212\custom_plate_yolo.pt"
folder_path = r"C:\Users\SAMSUNG\Documents\AIOT\0212\images\test_car"
excel_path = os.path.join(folder_path, "plate_results.xlsx")

# EasyOCR 한글+숫자 reader
reader = easyocr.Reader(['ko', 'en'], gpu=False)  # GPU 없으면 False

# YOLO 모델 로드
model = YOLO(yolo_model_path)

results_list = []

# -----------------------------
# 이미지 처리
# -----------------------------
for filename in os.listdir(folder_path):
    if not filename.lower().endswith((".jpg", ".jpeg", ".png")):
        continue

    file_path = os.path.join(folder_path, filename)
    image = cv2.imread(file_path)
    if image is None:
        print(f"[{filename}] 이미지 불러오기 실패")
        continue

    # YOLO 번호판 탐지
    yolo_results = model.predict(image, imgsz=640, conf=0.3)
    if len(yolo_results) == 0 or len(yolo_results[0].boxes) == 0:
        print(f"[{filename}] 번호판 미검출")
        results_list.append({"filename": filename, "plate_text": ""})
        continue

    # 첫 번째 번호판만 사용
    box = yolo_results[0].boxes.xyxy[0]
    x1, y1, x2, y2 = map(int, box)

    # -----------------------------
    # Perspective Transform (기울기 보정)
    # -----------------------------
    # YOLO에서 polygon 좌표를 얻으면 더 정확. 여기서는 단순 bbox 사용
    pts_src = np.array([
        [x1, y1],
        [x2, y1],
        [x2, y2],
        [x1, y2]
    ], dtype=np.float32)

    # 번호판 비율 (가로:세로 4:1) 기준
    width, height = 440, 110
    pts_dst = np.array([
        [0, 0],
        [width-1, 0],
        [width-1, height-1],
        [0, height-1]
    ], dtype=np.float32)

    M = cv2.getPerspectiveTransform(pts_src, pts_dst)
    plate_rectified = cv2.warpPerspective(image, M, (width, height))

    # -----------------------------
    # OCR
    # -----------------------------
    text_results = reader.readtext(plate_rectified)
    text = " ".join([res[1] for res in text_results]).strip()
    results_list.append({"filename": filename, "plate_text": text})

    print(f"[{filename}] 인식된 번호판: {text}")

    # -----------------------------
    # 결과 시각화
    # -----------------------------
    cv2.rectangle(image, (x1, y1), (x2, y2), (0, 255, 0), 2)
    cv2.imshow("Plate", plate_rectified)
    cv2.imshow("Result", image)
    cv2.waitKey(1300)  # 1초 대기

cv2.destroyAllWindows()

# -----------------------------
# Excel 저장
# -----------------------------
df = pd.DataFrame(results_list)
df.to_excel(excel_path, index=False, engine='openpyxl')
print(f"\n모든 처리 완료! Excel 저장: {excel_path}")
