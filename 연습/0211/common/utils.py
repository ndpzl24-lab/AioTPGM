import numpy as np
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