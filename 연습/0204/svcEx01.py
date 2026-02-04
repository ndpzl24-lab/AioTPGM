from sklearn import svm
from sklearn.datasets import load_iris

iris = load_iris()

a = svm.SVC(gamma=1.0, C=10)
a.fit(iris.data, iris.target)

new_d = [6.4, 3.2, 6.0, 2.5]
res = a.predict([new_d])

for i in res:
    if i == 0:
        print("이 품종은 setosa 종입니다.")
    elif i == 1:
        print("이 품종은 versicolor 종입니다.")
    elif i == 2:
        print("이 품종은 virginica 종입니다.")
    else:
        print("알 수 없는 품종입니다.")
    