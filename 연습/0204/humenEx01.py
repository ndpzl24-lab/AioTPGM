# ===============================
# 1️⃣ 라이브러리 임포트
# ===============================
import matplotlib.pyplot as plt
from sklearn import datasets

# ===============================
# 2️⃣ LFW 얼굴 데이터셋
# ===============================
print("LFW 데이터셋 로드 중...")

# 이미 다운로드되어 캐시에 저장된 데이터를 사용
# download_if_missing=True: 처음 한 번은 터미널에서 다운로드 필요
lfw = datasets.fetch_lfw_people(min_faces_per_person=70, resize=0.4, download_if_missing=True)

print(f"LFW 데이터셋 준비 완료! 총 샘플 수: {len(lfw.images)}")
print(f"첫 8명 얼굴을 시각화합니다.")

# 처음 8명의 얼굴 이미지 시각화
plt.figure(figsize=(15, 5))
for i in range(8):
    plt.subplot(1, 8, i + 1)
    plt.imshow(lfw.images[i], cmap=plt.cm.bone)
    plt.title(lfw.target_names[lfw.target[i]], fontsize=9)
    plt.axis('off')

plt.show(block=True)  # VS Code에서도 창이 뜨도록 block=True

# ===============================
# 3️⃣ 20 Newsgroups 텍스트 데이터셋
# ===============================
print("\n20 Newsgroups 데이터셋 로드 중...")
news = datasets.fetch_20newsgroups(subset='train', download_if_missing=True)
print(f"20 Newsgroups 데이터셋 준비 완료! 총 샘플 수: {len(news.data)}")

# 0번 샘플 출력 (길면 일부만)
n = 0
print("\n**** 0번 샘플 문서 ****\n")
print(news.data[n][:500], "...")  # 최대 500자만 출력
print("\n이 문서의 부류는:", news.target_names[news.target[n]])

# ===============================
# 4️⃣ 추가: 5번째 샘플까지 반복 출력
# ===============================
print("\n**** 0~4번 샘플 요약 ****\n")
for idx in range(5):
    print(f"샘플 {idx} 부류: {news.target_names[news.target[idx]]}")
    print(news.data[idx][:200].replace("\n", " "), "...\n")
