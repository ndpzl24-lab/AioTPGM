import tensorflow as tf
from tensorflow.keras.preprocessing.image import ImageDataGenerator
from tensorflow.keras.callbacks import EarlyStopping
from tensorflow.keras.utils import load_img, img_to_array
import numpy as np

# ================================
# 데이터 경로
# ================================
train_dir = "horse-or-human"
validation_dir = "validation-horse-or-human"

# ================================
# 데이터 전처리
# ================================
train_datagen = ImageDataGenerator(
    rescale=1.0 / 255,
    rotation_range=30,
    width_shift_range=0.2,
    height_shift_range=0.2,
    zoom_range=0.2,
    horizontal_flip=True
)

validation_datagen = ImageDataGenerator(rescale=1.0 / 255)

train_generator = train_datagen.flow_from_directory(
    train_dir,
    target_size=(150, 150),
    batch_size=32,
    class_mode='binary'
)

validation_generator = validation_datagen.flow_from_directory(
    validation_dir,
    target_size=(150, 150),
    batch_size=32,
    class_mode='binary'
)

print("✅ 데이터 준비 완료")

# ================================
# CNN 모델 구성
# ================================
model = tf.keras.models.Sequential([
    tf.keras.layers.Input(shape=(150, 150, 3)),

    tf.keras.layers.Conv2D(16, (3, 3), activation='relu'),
    tf.keras.layers.MaxPooling2D(2, 2),

    tf.keras.layers.Conv2D(32, (3, 3), activation='relu'),
    tf.keras.layers.MaxPooling2D(2, 2),

    tf.keras.layers.Conv2D(64, (3, 3), activation='relu'),
    tf.keras.layers.MaxPooling2D(2, 2),

    tf.keras.layers.Flatten(),
    tf.keras.layers.Dense(512, activation='relu'),
    tf.keras.layers.Dense(1, activation='sigmoid')
])

model.compile(
    optimizer='adam',
    loss='binary_crossentropy',
    metrics=['accuracy']
)

model.summary()

# ================================
# EarlyStopping 설정
# ================================
early_stop = EarlyStopping(
    monitor='val_loss',
    patience=2,
    restore_best_weights=True
)

# ================================
# 모델 학습
# ================================
model.fit(
    train_generator,
    epochs=3,
    validation_data=validation_generator,
    callbacks=[early_stop]
)

# ================================
# 단일 이미지 예측
# ================================
img_path = "test.jpg"  # ← 예측할 이미지 파일

img = load_img(img_path, target_size=(150, 150))
img_array = img_to_array(img)
img_array = img_array / 255.0
img_array = np.expand_dims(img_array, axis=0)

prediction = model.predict(img_array)[0][0]

print("\n📌 예측 결과")
print(f"확률 값: {prediction:.4f}")

if prediction > 0.5:
    print("👉 사람 (Human) 입니다")
else:
    print("👉 말 (Horse) 입니다")
