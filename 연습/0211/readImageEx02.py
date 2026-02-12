import cv2, numpy as np
from common.utils import print_matInfo


# 이미지 파일 경로
title1, title2 = 'gray2gray', 'gray2color'

# 이미지 읽기
gray2gray = cv2.imread(r"C:\Users\SAMSUNG\Documents\AIOT\0211\images\read_gray.jpg", cv2.IMREAD_GRAYSCALE)
gray2color = cv2.imread(r"C:\Users\SAMSUNG\Documents\AIOT\0211\images\read_gray.jpg", cv2.IMREAD_COLOR)

# 예외 처리 - 파일 읽기 여부
if gray2gray is None or gray2color is None:
    raise Exception("영상파일 읽기 에러")

# 특정 픽셀 값 확인
print("행렬 좌표 (100, 100) 화소값")
print("%s %s" % (title1, gray2gray[100, 100]))
print("%s %s" % (title2, gray2color[100, 100]))

# 행렬 정보 출력
print_matInfo(title1, gray2gray)
print_matInfo(title2, gray2color)

# 이미지 출력
cv2.imshow(title1, gray2gray)
cv2.imshow(title2, gray2color)
cv2.waitKey(0)
cv2.destroyAllWindows()
