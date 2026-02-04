import numpy as np

block1 = np.array([[0., 0., 0., 1., 1.]] * 3)
block2 = np.arange(10, 160, 10, dtype=float).reshape(3, 5)

result = np.vstack([block1, block2, block1, block2])
print(repr(result))