import numpy as np

a = np.array([[10, 20 , 30, 40], [50, 60, 70, 80]])
print(a)

m= np.array([[0, 1, 2, 3, 4],
             [5, 6, 7, 8, 9],
             [10, 11, 12, 13, 14]])
print(m[1,2])
print(m[2,-1])
print(m[[1,1],[1,2]])
print(m[[1,2],[2,2]])
print(m[0,3:5], m[1,3:5])


a = np.zeros(5)
print(a)

b = np.zeros((2, 3))
print(b)

c = np.zeros((5, 2), dtype="i")
print(c)

d = np.zeros(5, dtype="U4")
print(d)
print(d[0])
print(d[1])
print(d[2])
