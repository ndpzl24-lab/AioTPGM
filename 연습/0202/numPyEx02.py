import numpy as np

data = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
answer = []
for di in data:
    answer.append(2 * di)
print(answer)

x=np.array(data)
x= x*2
print(x)

a = np.array([1, 2, 3])
b = np.array([10, 20, 30])
print(2 * a + b)
print(a == 2)
print(b > 10)
print((a == 2) & (b > 10)) 

c = np.array([[0, 1, 2], [3, 4, 5]]) # 2 x 3 array
print(c)

d = np.array([[[1, 2, 3, 4],[5, 6, 7, 8],[9, 10, 11, 12]],
              [[11, 12, 13, 14],[15, 16, 17, 18],[19, 20, 21, 22]]]) 
print(d)

# a = np.array([1, 2, 3])
print(a.ndim)
print(a.shape)
# c = np.array([[0, 1, 2], [3, 4, 5]])
print(c.ndim)
print(c.shape)
print(d.ndim)
print(d.shape)


a = np.array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
idx = np.array([True, False, True, False, True,False, True, False, True, False])
idx2 = np.array([0, 2, 4, 6, 8])
idx3 = np.array(a%2 == 0)

print(a[idx])
print(a[idx2])
print(a[idx3]) 
