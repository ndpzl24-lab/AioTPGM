from tkinter import *
import random

# 주사위 이미지 파일 (dice1.png ~ dice6.png)
dice_images = [f"dice{i}.png" for i in range(1,7)]

window = Tk()
window.title("🎲 주사위 게임 🎲")
window.geometry("450x300")
window.configure(bg="#f0f8ff")  # 배경 색상 연한 하늘색

# 결과 메시지 레이블
result_label = Label(
    window,
    text="버튼을 누르거나 스페이스를 눌러 주사위를 굴리세요.",
    fg="#003366",
    bg="#f0f8ff",
    font=("Arial", 12, "bold")
)
result_label.pack(pady=10)

# 주사위 이미지 레이블 2개
dice_frame = Frame(window, bg="#f0f8ff")
dice_frame.pack(pady=10)

dice1_label = Label(dice_frame, bg="#f0f8ff", bd=2, relief="ridge")
dice1_label.pack(side=LEFT, padx=20)

dice2_label = Label(dice_frame, bg="#f0f8ff", bd=2, relief="ridge")
dice2_label.pack(side=RIGHT, padx=20)

rolling = False  # 애니메이션 상태 변수

def roll_animation(count=12):
    """주사위가 빠르게 바뀌는 애니메이션"""
    global rolling
    if count > 0:
        d1 = random.randint(1,6)
        d2 = random.randint(1,6)
        img1 = PhotoImage(file=dice_images[d1-1])
        img2 = PhotoImage(file=dice_images[d2-1])
        dice1_label.config(image=img1)
        dice1_label.image = img1
        dice2_label.config(image=img2)
        dice2_label.image = img2
        window.after(80, roll_animation, count-1)
    else:
        show_result()

def show_result():
    """최종 주사위 합과 판정 표시"""
    global rolling
    rolling = False
    d1 = random.randint(1,6)
    d2 = random.randint(1,6)
    img1 = PhotoImage(file=dice_images[d1-1])
    img2 = PhotoImage(file=dice_images[d2-1])
    dice1_label.config(image=img1)
    dice1_label.image = img1
    dice2_label.config(image=img2)
    dice2_label.image = img2

    total = d1 + d2
    if total > 7:
        msg = f"주사위: {d1}, {d2} 합: {total} → 높음!"
    elif total < 7:
        msg = f"주사위: {d1}, {d2} 합: {total} → 낮음!"
    else:
        msg = f"주사위: {d1}, {d2} 합: {total} → 같음!"
    result_label.config(text=msg + " \n다시 버튼이나 스페이스를 눌러 굴리세요!")

def roll_dice(event=None):
    """주사위 굴리기 함수 (버튼 클릭 또는 스페이스 이벤트용)"""
    global rolling
    if not rolling:
        rolling = True
        result_label.config(text="굴리는 중... ⏳")
        roll_animation(12)

# 버튼
roll_button = Button(
    window,
    text="주사위 굴리기",
    command=roll_dice,
    font=("Arial", 12, "bold"),
    bg="#32cd32", fg="white", activebackground="#228b22", width=15, height=2
)
roll_button.pack(pady=10)

# 스페이스바 이벤트 바인딩
window.bind("<space>", roll_dice)

window.mainloop()
