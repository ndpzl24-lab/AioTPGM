from tkinter import *

# 계산기 창 생성
window = Tk()
window.title("계산기")
window.geometry("300x400")
window.configure(bg="#f0f8ff")

# 입력/출력창
entry = Entry(window, width=16, font=("Arial", 24), borderwidth=2, relief="ridge")
entry.grid(row=0, column=0, columnspan=4, padx=10, pady=20)

# 버튼 클릭 시 처리 함수
def click_button(value):
    current = entry.get()
    entry.delete(0, END)
    entry.insert(0, current + str(value))

def clear():
    entry.delete(0, END)

def calculate():
    try:
        result = eval(entry.get())  # 문자열 계산
        entry.delete(0, END)
        entry.insert(0, str(result))
    except:
        entry.delete(0, END)
        entry.insert(0, "Error")

# 버튼 생성
buttons = [
    '7','8','9','/',
    '4','5','6','*',
    '1','2','3','-',
    '0','.','=','+'
]

row = 1
col = 0

for button in buttons:
    if button == '=':
        b = Button(window, text=button, width=5, height=2, bg="#32cd32", fg="white",
                   font=("Arial", 14), command=calculate)
    else:
        b = Button(window, text=button, width=5, height=2, bg="#87ceeb", fg="black",
                   font=("Arial", 14), command=lambda x=button: click_button(x))
    b.grid(row=row, column=col, padx=5, pady=5)
    col += 1
    if col > 3:
        col = 0
        row += 1

# Clear 버튼 따로
clear_button = Button(window, text="C", width=22, height=2, bg="#ff6347", fg="white",
                      font=("Arial", 14), command=clear)
clear_button.grid(row=row, column=0, columnspan=4, padx=5, pady=5)

window.mainloop()
