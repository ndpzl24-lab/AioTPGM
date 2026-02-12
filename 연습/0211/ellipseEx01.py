import numpy as np
import cv2

# 색상 정의 (BGR 순서)
orange, blue, white = (0, 165, 255), (255, 0, 0), (255, 255, 255)

# 이미지 생성 (300x700, 3채널, 흰색)
image = np.full((300, 700, 3), white, np.uint8)

# 타원 중심점
pt1, pt2 = (180, 150), (550, 150)

# 타원 크기
size = (120, 60)

# 타원 중심점 표시
cv2.circle(image, pt1, 1, 0, 2)
cv2.circle(image, pt2, 1, 0, 2)

# 파란색 타원 그리기
cv2.ellipse(image, pt1, size, 0, 0, 360, blue, 1)
cv2.ellipse(image, pt2, size, 90, 0, 360, blue, 1)

# 오렌지색 호 그리기
cv2.ellipse(image, pt1, size, 0, 30, 270, orange, 4)
cv2.ellipse(image, pt2, size, 90, -45, 90, orange, 4)

# 이미지 표시
cv2.imshow("문자열", image)
cv2.waitKey()
cv2.destroyAllWindows()
