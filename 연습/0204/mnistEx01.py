from sklearn.datasets import fetch_openml
from sklearn.neural_network import MLPClassifier
import matplotlib.pyplot as plt
import numpy as np

#  MNIST 데이터셋 읽고 학습용/테스트용 분리
mnist = fetch_openml('mnist_784')
mnist.data = mnist.data / 255.0  # 0~255 범위를 [0,1]로 정규화

# 학습 60,000개, 테스트 60,000개 (원래 MNIST는 학습 60k, 테스트 10k)
x_train = mnist.data[:60000];x_test  = mnist.data[60000:]
y_train = np.int16(mnist.target[:60000]);y_test  = np.int16(mnist.target[60000:])

#  MLP 모델 생성 및 학습
mlp = MLPClassifier(
    hidden_layer_sizes=(100,),
    learning_rate_init=0.001,
    batch_size=512,
    max_iter=300,
    solver='adam',
    verbose=True
)
mlp.fit(x_train, y_train)

#  테스트 집합으로 예측
res = mlp.predict(x_test)

#  혼동 행렬 계산
conf = np.zeros((10,10), dtype=np.int16)
for i in range(len(res)):
    conf[res[i]][y_test[i]] += 1
print("혼동 행렬:\n", conf)

#  정확률 계산
no_correct = 0
for i in range(10):
    no_correct += conf[i][i]
accuracy = no_correct / len(res)
print("테스트 집합에 대한 정확률:", accuracy*100, "입니다.")

