#  라이브러리 임포트
from sklearn import datasets, svm
from sklearn.model_selection import train_test_split
import numpy as np

#  digits 데이터셋 불러오기
digits = datasets.load_digits()

#  훈련 집합과 테스트 집합으로 분할
x_train, x_test, y_train, y_test = train_test_split(
    digits.data, digits.target, train_size=0.8
)

#  SVM 분류기 생성 및 학습
s = svm.SVC(gamma=0.001)  # gamma, C 값은 조정 가능
s.fit(x_train, y_train)

#  테스트 집합 예측
res = s.predict(x_test)

#  혼동 행렬 생성
num_classes = len(digits.target_names)
conf = np.zeros((num_classes, num_classes), dtype=int)

for i in range(len(res)):
    conf[y_test[i]][res[i]] += 1

print("혼동 행렬:\n", conf)

#  정확률 계산
no_correct = sum(conf[i][i] for i in range(num_classes))
accuracy = no_correct / len(y_test)

print(f"\n테스트 집합에 대한 정확률은 {accuracy*100:.2f}% 입니다")

