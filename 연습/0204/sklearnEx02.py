#  라이브러리 임포트
from sklearn import datasets
from sklearn import svm

#  digits 데이터셋 불러오기
digits = datasets.load_digits()

#  SVM 분류기 생성 및 학습
s = svm.SVC(gamma=0.1, C=10)  # gamma, C 값 조정 가능
s.fit(digits.data, digits.target)

#  훈련 집합의 처음 3개 샘플을 새로운 샘플로 예측
new_d = digits.data[:3]
res = s.predict(new_d)

print("예측값은:", res)
print("참값은:", digits.target[:3])

#  전체 훈련 집합에 대해 예측하고 정확률 계산
res_all = s.predict(digits.data)
correct = [i for i in range(len(res_all)) if res_all[i] == digits.target[i]]
accuracy = len(correct) / len(res_all)

print(f"\n화소 특징을 사용했을 때 정확률: {accuracy*100:.2f}%")

