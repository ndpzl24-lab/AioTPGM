import tkinter as tk
from tkinter import messagebox
import random
import time

# -------------------- 설정 -------------------- #
SIZE = 10      # 보드 크기
MINES = 15     # 지뢰 개수

board = []     # 지뢰 및 숫자 정보
buttons = []   # 버튼 객체
flags = []     # 깃발 표시 여부
revealed = []  # 열림 여부
start_time = None
timer_id = None

root = tk.Tk()
root.title("완전판 지뢰찾기")

# -------------------- UI 요소 -------------------- #
remaining_label = tk.Label(root, text=f"남은 지뢰: {MINES}", font=("Arial", 12))
remaining_label.grid(row=0, column=0, columnspan=SIZE//2)

time_label = tk.Label(root, text="시간: 0초", font=("Arial", 12))
time_label.grid(row=0, column=SIZE//2, columnspan=SIZE//2)

buttons_frame = tk.Frame(root)
buttons_frame.grid(row=1, column=0, columnspan=SIZE)

# -------------------- 게임 로직 -------------------- #
def create_board():
    global board, flags, revealed
    board = [[0 for _ in range(SIZE)] for _ in range(SIZE)]
    flags = [[False for _ in range(SIZE)] for _ in range(SIZE)]
    revealed = [[False for _ in range(SIZE)] for _ in range(SIZE)]

    mines = random.sample(range(SIZE*SIZE), MINES)
    for m in mines:
        x, y = divmod(m, SIZE)
        board[x][y] = -1

    for i in range(SIZE):
        for j in range(SIZE):
            if board[i][j] == -1:
                continue
            count = 0
            for dx in [-1,0,1]:
                for dy in [-1,0,1]:
                    nx, ny = i+dx, j+dy
                    if 0<=nx<SIZE and 0<=ny<SIZE and board[nx][ny]==-1:
                        count += 1
            board[i][j] = count

def update_remaining():
    count = sum(sum(1 for f in row if f) for row in flags)
    remaining_label.config(text=f"남은 지뢰: {MINES - count}")

def check_win():
    for i in range(SIZE):
        for j in range(SIZE):
            if board[i][j] != -1 and not revealed[i][j]:
                return False
    stop_timer()
    messagebox.showinfo("승리!", f"모든 칸을 열었습니다! 경과 시간: {time_label['text']}")
    reset_board()
    return True

def reveal(x, y):
    global start_time
    if start_time is None:
        start_timer()

    if revealed[x][y]:
        chord(x, y)  # 이미 열린 칸 클릭 시 Chording
        return
    if flags[x][y]:
        return

    revealed[x][y] = True
    buttons[x][y]['state'] = 'disabled'

    if board[x][y] == -1:
        buttons[x][y]['text'] = "💣"
        buttons[x][y]['bg'] = "red"
        stop_timer()
        messagebox.showinfo("게임 종료", f"지뢰를 밟았습니다! 경과 시간: {time_label['text']}")
        reset_board()
        return
    elif board[x][y] > 0:
        buttons[x][y]['text'] = str(board[x][y])
        buttons[x][y]['bg'] = "#d9f0ff"  # 숫자 있는 칸 파랑
    else:
        buttons[x][y]['text'] = ""
        buttons[x][y]['bg'] = "#e0e0e0"  # 안전지역 회색
        for dx in [-1,0,1]:
            for dy in [-1,0,1]:
                nx, ny = x+dx, y+dy
                if 0<=nx<SIZE and 0<=ny<SIZE:
                    reveal(nx, ny)
    check_win()

def right_click(event, x, y):
    if revealed[x][y]:
        return
    if not flags[x][y]:
        buttons[x][y]['text'] = "🚩"
        flags[x][y] = True
        buttons[x][y]['bg'] = "#ffe6e6"  # 깃발 표시 시 연한 빨강
    else:
        buttons[x][y]['text'] = ""
        flags[x][y] = False
        buttons[x][y]['bg'] = "SystemButtonFace"
    update_remaining()

def chord(x, y):
    """이미 열린 숫자 칸 클릭 시 주변 깃발 수와 비교 후 안전한 칸 열기"""
    if not revealed[x][y] or board[x][y] <= 0:
        return
    flag_count = 0
    for dx in [-1,0,1]:
        for dy in [-1,0,1]:
            nx, ny = x+dx, y+dy
            if 0<=nx<SIZE and 0<=ny<SIZE and flags[nx][ny]:
                flag_count += 1
    if flag_count == board[x][y]:
        for dx in [-1,0,1]:
            for dy in [-1,0,1]:
                nx, ny = x+dx, y+dy
                if 0<=nx<SIZE and 0<=ny<SIZE and not flags[nx][ny] and not revealed[nx][ny]:
                    reveal(nx, ny)

# -------------------- 타이머 -------------------- #
def start_timer():
    global start_time
    start_time = time.time()
    update_timer()

def update_timer():
    if start_time is None:
        return
    elapsed = int(time.time() - start_time)
    time_label.config(text=f"시간: {elapsed}초")
    global timer_id
    timer_id = root.after(1000, update_timer)

def stop_timer():
    global timer_id
    if timer_id:
        root.after_cancel(timer_id)
        timer_id = None

# -------------------- 재시작 -------------------- #
def reset_board():
    global start_time
    create_board()
    for i in range(SIZE):
        for j in range(SIZE):
            buttons[i][j]['text'] = ""
            buttons[i][j]['state'] = 'normal'
            buttons[i][j]['bg'] = "SystemButtonFace"
            flags[i][j] = False
            revealed[i][j] = False
    update_remaining()
    stop_timer()
    time_label.config(text="시간: 0초")
    start_time = None

# -------------------- 버튼 생성 -------------------- #
for i in range(SIZE):
    row = []
    for j in range(SIZE):
        b = tk.Button(buttons_frame, width=3, height=1)
        b.grid(row=i, column=j)
        b.bind("<Button-1>", lambda e, x=i, y=j: reveal(x, y))
        b.bind("<Button-3>", lambda e, x=i, y=j: right_click(e, x, y))
        row.append(b)
    buttons.append(row)

reset_btn = tk.Button(root, text="재시작", command=reset_board)
reset_btn.grid(row=SIZE+1, column=0, columnspan=SIZE, sticky="we")

# -------------------- 초기화 -------------------- #
create_board()
root.mainloop()
