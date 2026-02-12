import matplotlib.pylab as plt
from sklearn import linear_model
#선형 회귀 모델을 생성한다 .
reg = linear_model.LinearRegression()
# 데이터는 파이썬의 리스트로 만들어도 되고 아니면 넘파이의 배열로 만들어도 됨
X = [[174], [152], [138], [128], [186]] # 학습 예제
y = [71, 55, 46, 38, 88] # 정답
reg.fit(X, y) # 학습 함수
print(reg.coef_) # 기울기 출력
print(reg.intercept_) # y절편 출력
print(reg.score) # 결정계수 출력
reg.predict([[178]]) # 170cm인 사람의 몸무게 예측

#학습 데이터를 산포도로 그린다 .
plt.scatter(X, y, color='black')
#학습 데이터를 입력으로 하여 예측값을 계산한다 . 직선을 가지고 예측하기 때문에 직선 상의 점이 된다 .
y_pred = reg.predict(X)
#예측값으로 선그래프를 그린다 .
#직선이 그려진다 .
plt.plot (X, y_pred , color='blue', linewidth=3)
plt.show()