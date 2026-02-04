from tkinter import *

window = Tk()
window.title("화씨 → 섭씨 변환")

Label(window, text="화씨").grid(row=0, column=0)
Label(window, text="섭씨").grid(row=1, column=0)

e1 = Entry(window)
e2 = Entry(window)

e1.grid(row=0, column=1)
e2.grid(row=1, column=1)

def f_to_c():
    f = float(e1.get())              # 화씨 입력값
    c = (f - 32) * 5 / 9              # 섭씨 변환 공식
    e2.delete(0, END)                 # 기존 값 삭제
    e2.insert(0, f"{c:.2f}")          # 섭씨 출력

Button(window, text="화씨 → 섭씨", command=f_to_c).grid(row=2, column=1)

window.mainloop()
