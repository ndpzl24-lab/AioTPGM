import tensorflow as tf
import numpy as np
from tensorflow.keras import Sequential
from tensorflow.keras.layers import Dense

dense = Dense(units=1, input_shape=[1])
model = Sequential([dense])

model.compile(optimizer='sgd',loss='mean_squared_error')

xs = np.array([-1.0, 0.0, 1.0, 2.0, 3.0, 4.0], dtype=float)
ys = np.array([-3.0, -1.0, 1.0, 3.0, 5.0, 7.0], dtype=float)

model.fit(xs, ys, epochs=500, verbose=0)

prediction = model.predict(np.array([[10.0]]))
print("10에 대한 예측값:", prediction)
print("Dense에서 직접 가져온 가중치:", dense.get_weights())
print("Model에서 가져온 가중치:", model.layers[0].get_weights())
