import cv2
import matplotlib.pyplot as plt

# 이미지 읽기
image = cv2.imread("images/matplot.jpg", cv2.IMREAD_COLOR)
if image is None:
    raise Exception("영상파일 읽기 에러")

# 이미지 행렬 정보
rows, cols = image.shape[:2]

# 컬러 변환
rgb_img = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)       # BGR → RGB
gray_img = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)     # BGR → 그레이스케일

# ---------------------------
# 그림 1: 원본과 변환 이미지 단일 출력
fig = plt.figure(num=1, figsize=(3,4))
plt.imshow(image)
plt.title('figure1 - original(bgr)')
plt.axis('off')
plt.tight_layout()

# ---------------------------
# 그림 2: pyplot image display
fig = plt.figure(figsize=(6,4))
plt.subplot(1,2,1)
plt.imshow(rgb_img)
plt.axis([0, cols, rows,0])
plt.title('rgb color')

plt.subplot(1,2,2)
plt.imshow(gray_img, cmap='gray')
plt.title('gray_img2')

plt.show()
