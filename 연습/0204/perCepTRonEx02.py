from sklearn import datasets
from sklearn.linear_model import Perceptron
from sklearn.model_selection import train_test_split
import numpy as np

# 데이터셋을 읽고 훈련 집합과 테스트 집합으로 분할
digit = datasets.load_digits()
x_train, x_test, y_train, y_test = train_test_split(
    digit.data, digit.target, train_size=0.6
)

# fit 함수로 Perceptron 학습
p = Perceptron(max_iter=100, eta0=0.001, verbose=0)  # 모델 객체 생성
p.fit(x_train, y_train)  # digit 데이터로 모델링

# 학습된 모델로 테스트 집합 예측
res = p.predict(x_test)

# 혼동 행렬(confusion matrix) 계산
conf = np.zeros((10, 10))
for i in range(len(res)):
    conf[res[i]][y_test[i]] += 1
print("혼동 행렬:\n", conf)

# 정확률 계산
no_correct = 0
for i in range(10):
    no_correct += conf[i][i]
accuracy = no_correct / len(res)
print("테스트 집합에 대한 정확률:", accuracy * 100, "%입니다.")
