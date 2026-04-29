import numpy as np
import cv2
import time
import matplotlib.pyplot as plt
import matplotlib as mpl


# ===============================
# 영상 처리 함수들
# ===============================
def pixel_access1(image):
    image1 = np.zeros(image.shape[:2], image.dtype)
    for i in range(image.shape[0]):
        for j in range(image.shape[1]):
            image1[i, j] = 255 - image[i, j]
    return image1


def pixel_access2(image):
    image2 = np.zeros(image.shape[:2], image.dtype)
    for i in range(image.shape[0]):
        for j in range(image.shape[1]):
            image2[i, j] = 255 - image.item(i, j)
    return image2


def pixel_access3(image):
    lut = np.array([255 - i for i in range(256)], np.uint8)
    return lut[image]


def pixel_access4(image):
    return cv2.subtract(255, image)


def pixel_access5(image):
    return 255 - image


# ===============================
# 이미지 읽기
# ===============================
image = cv2.imread("images/bright.jpg", cv2.IMREAD_GRAYSCALE)
if image is None:
    raise Exception("영상파일 읽기 오류")


# ===============================
# 수행시간 체크 (시간 저장)
# ===============================
def time_check(func):
    start = time.perf_counter()
    result = func(image)
    elapsed = (time.perf_counter() - start) * 1000
    return result, elapsed


image1, t1 = time_check(pixel_access1)
image2, t2 = time_check(pixel_access2)
image3, t3 = time_check(pixel_access3)
image4, t4 = time_check(pixel_access4)
image5, t5 = time_check(pixel_access5)


# ===============================
# OpenCV 창 출력
# ===============================
cv2.imshow("Original", image)
cv2.imshow("1", image1)
cv2.imshow("2", image2)
cv2.imshow("3", image3)
cv2.imshow("4", image4)
cv2.imshow("5", image5)

cv2.waitKey(1)


# ===============================
# matplotlib 설정
# ===============================
mpl.rcParams['font.family'] = 'Malgun Gothic'
mpl.rcParams['axes.unicode_minus'] = False

fig, axes = plt.subplots(1, 5, figsize=(10, 4))

images = [image1, image2, image3, image4, image5]
times = [t1, t2, t3, t4, t5]

titles = [
    "방법1 직접 접근",
    "방법2 item()",
    "방법3 LUT",
    "방법4 OpenCV",
    "방법5 ndarray"
]

for i in range(5):
    axes[i].imshow(images[i], cmap='gray')

    # 🔥 1 : 1.5 비율 유지 (세로가 1.5배)
    axes[i].set_aspect(1.5)

    axes[i].set_title(f"{titles[i]}\n{times[i]:.2f} ms", fontsize=8)

    axes[i].set_xticks([])
    axes[i].set_yticks([])

plt.subplots_adjust(wspace=0.05)
plt.show()
cv2.destroyAllWindows()