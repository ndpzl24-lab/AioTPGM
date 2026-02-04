import numpy as np
import time

x = np.arange(1, 10001)
y = np.arange(10001, 20001)
start = time.time()
z = np.zeros_like(x)
for i in range(10000):
    z[i] = x[i] + y[i]
z[:10]
end = time.time()
print(f"소요시간 : {end - start}초")


start = time.time()
z = x + y
end = time.time()
print(f"소요 시간 : {end - start}초")


x = np.arange(5)
print(x)
y = np.ones_like(x)
print(y)
print(x + y)
print(x + 1)



x = np.vstack([range(7)[i:i + 3] for i in range(5)])
print(x)
y = np.arange(5)[:, np.newaxis]
print(y)
print(x + y)
y = np.arange(3)
print(y)
print(x + y)