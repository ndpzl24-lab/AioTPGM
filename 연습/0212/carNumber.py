import cv2
import pytesseract
import numpy as np
import os

# Windows 환경에서 Tesseract 경로
pytesseract.pytesseract.tesseract_cmd = r"C:\Program Files\Tesseract-OCR\tesseract.exe"

# 이미지가 들어 있는 폴더 경로
folder_path = r"C:\Users\SAMSUNG\Documents\AIOT\0212\images\test_car"

# 폴더 내 모든 파일 순회
for filename in os.listdir(folder_path):
    if filename.lower().endswith((".jpg", ".jpeg", ".png")):
        file_path = os.path.join(folder_path, filename)
        image = cv2.imread(file_path)
        if image is None:
            print(f"[{filename}] 이미지를 불러올 수 없습니다.")
            continue

        # 1️⃣ 그레이스케일 변환
        gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

        # 2️⃣ 노이즈 제거
        blur = cv2.GaussianBlur(gray, (5, 5), 0)

        # 3️⃣ 엣지 검출
        edges = cv2.Canny(blur, 100, 200)

        # 4️⃣ 컨투어 찾기
        contours, _ = cv2.findContours(edges, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)

        candidates = []

        for contour in contours:
            approx = cv2.approxPolyDP(contour, 10, True)
            if len(approx) == 4:  # 사각형 후보
                x, y, w, h = cv2.boundingRect(contour)
                ratio = w / h
                area = w * h
                if 3 < ratio < 5 and area > 1000:
                    candidates.append((x, y, w, h))

        if not candidates:
            print(f"[{filename}] 번호판 후보를 찾지 못했습니다.")
            continue

        # 후보 중 첫 번째 사용
        x, y, w, h = candidates[0]
        plate = image[y:y+h, x:x+w]

        # 5️⃣ OCR 전처리
        gray_plate = cv2.cvtColor(plate, cv2.COLOR_BGR2GRAY)
        thresh = cv2.adaptiveThreshold(
            gray_plate, 255,
            cv2.ADAPTIVE_THRESH_GAUSSIAN_C,
            cv2.THRESH_BINARY,
            11, 2
        )
        kernel = cv2.getStructuringElement(cv2.MORPH_RECT, (3,3))
        processed = cv2.morphologyEx(thresh, cv2.MORPH_CLOSE, kernel)

        # 6️⃣ OCR
        custom_config = r'-c tessedit_char_whitelist=0123456789가나다라마바사아자차카타파하 --psm 7 --oem 3'
        text = pytesseract.image_to_string(processed, config=custom_config)

        print(f"[{filename}] 인식된 번호판:", text.strip())

        # 7️⃣ 결과 시각화 (원하면 주석 처리 가능)
        cv2.rectangle(image, (x, y), (x+w, y+h), (0, 255, 0), 2)
        cv2.imshow("Plate", processed)
        cv2.imshow("Result", image)
        cv2.waitKey(500)  # 0으로 하면 키 입력 대기, 500ms만 보여줌

cv2.destroyAllWindows()
