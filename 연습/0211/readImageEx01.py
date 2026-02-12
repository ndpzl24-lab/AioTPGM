import cv2

# 행렬 정보 출력 함수
def print_matInfo(name, image):
    # 데이터 타입 확인
    if image.dtype == 'uint8':
        mat_type = 'CV_8U'
    elif image.dtype == 'int8':
        mat_type = 'CV_8S'
    elif image.dtype == 'uint16':
        mat_type = 'CV_16U'
    elif image.dtype == 'int16':
        mat_type = 'CV_16S'
    elif image.dtype == 'float32':
        mat_type = 'CV_32F'
    elif image.dtype == 'float64':
        mat_type = 'CV_64F'
    else:
        mat_type = 'Unknown'

    # 채널 수 확인
    nchannel = 3 if image.ndim == 3 else 1

    # 정보 출력
    print("%-12s: depth(%s), channels(%s) -> mat_type(%s, %s)" 
          % (name, image.dtype, nchannel, mat_type, nchannel))


# 이미지 파일 경로
title1, title2 = 'gray2gray', 'gray2color'

# 이미지 읽기
gray2gray = cv2.imread("images/read_gray.jpg", cv2.IMREAD_GRAYSCALE)
gray2color = cv2.imread("images/read_gray.jpg", cv2.IMREAD_COLOR)

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
