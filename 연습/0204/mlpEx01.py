from sklearn import datasets
from sklearn.neural_network import MLPClassifier
from sklearn.model_selection import train_test_split
import numpy as np

# 1️⃣ 데이터셋 읽고 학습용/테스트용 분리
digit = datasets.load_digits()
x_train, x_test, y_train, y_test = train_test_split(
    digit.data, digit.target, train_size=0.6, random_state=42
)

# 2️⃣ MLP 분류기 모델 생성 및 학습
mlp = MLPClassifier(
    hidden_layer_sizes=(100,),
    learning_rate_init=0.001,
    batch_size=32,
    max_iter=300,
    solver='sgd',
    verbose=True
)
mlp.fit(x_train, y_train)

# 3️⃣ 테스트 집합으로 예측
res = mlp.predict(x_test)

# 4️⃣ 혼동 행렬 계산
conf = np.zeros((10,10), dtype=int)
for i in range(len(res)):
    conf[res[i]][y_test[i]] += 1
print("혼동 행렬:\n", conf)

# 5️⃣ 정확률 계산
no_correct = 0
for i in range(10):
    no_correct += conf[i][i]
accuracy = no_correct / len(res)
print("테스트 집합에 대한 정확률:", accuracy*100, "%입니다.")
