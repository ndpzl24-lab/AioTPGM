from tkinter import*

window = Tk()               #루트 윈도우를 생성
label = Label(window, text="Hello tkinter") # 레이블위젯을 생성
label.pack()     # 레이블 위젯을 윈도우에 배치

window.mainloop()