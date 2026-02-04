import numpy as np 

A = np.array([[1, 2, 3], [4, 5, 6]])
print(A)
B = A.T
print(B)


a= np.arange(12)
print(a.reshape(3, -1))
print(a.reshape(2, 2, -1))
print(a.reshape(2, -1, 2))