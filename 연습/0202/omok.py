import tkinter as tk
from tkinter import messagebox
import random

SIZE = 15
CELL_SIZE = 30

board = [[0 for _ in range(SIZE)] for _ in range(SIZE)]
PLAYER = 1  # 사람=흑
AI = 2      # AI=백
current_player = PLAYER
last_mark = None  # 마지막 돌 위치 표시용

def check_win(x, y):
    player = board[x][y]
    directions = [(1,0),(0,1),(1,1),(1,-1)]
    for dx, dy in directions:
        count = 1
        nx, ny = x+dx, y+dy
        while 0<=nx<SIZE and 0<=ny<SIZE and board[nx][ny]==player:
            count += 1
            nx += dx
            ny += dy
        nx, ny = x-dx, y-dy
        while 0<=nx<SIZE and 0<=ny<SIZE and board[nx][ny]==player:
            count += 1
            nx -= dx
            ny -= dy
        if count >= 5:
            return True
    return False

def score_position(x, y, player):
    if board[x][y] != 0:
        return -1
    directions = [(1,0),(0,1),(1,1),(1,-1)]
    score = 0
    for dx, dy in directions:
        count = 1
        nx, ny = x+dx, y+dy
        while 0<=nx<SIZE and 0<=ny<SIZE and board[nx][ny]==player:
            count += 1
            nx += dx
            ny += dy
        nx, ny = x-dx, y-dy
        while 0<=nx<SIZE and 0<=ny<SIZE and board[nx][ny]==player:
            count += 1
            nx -= dx
            ny -= dy
        if count >= 5:
            return 100
        elif count == 4:
            score += 50
        elif count == 3:
            score += 10
        elif count == 2:
            score += 1
    return score

def mark_last(x, y):
    """마지막 수 위치 표시"""
    global last_mark
    if last_mark is not None:
        canvas.delete(last_mark)  # 이전 표시 삭제
    last_mark = canvas.create_oval(y*CELL_SIZE+10, x*CELL_SIZE+10,
                                   (y+1)*CELL_SIZE-10, (x+1)*CELL_SIZE-10,
                                   outline="red", width=2)

def ai_move():
    empty_cells = [(i,j) for i in range(SIZE) for j in range(SIZE) if board[i][j]==0]
    best_score = -1
    best_moves = []

    for x, y in empty_cells:
        ai_score = score_position(x, y, AI)
        player_score = score_position(x, y, PLAYER)
        total_score = max(ai_score, player_score)

        if total_score > best_score:
            best_score = total_score
            best_moves = [(x, y)]
        elif total_score == best_score:
            best_moves.append((x, y))

    x, y = random.choice(best_moves)
    board[x][y] = AI
    canvas.create_oval(y*CELL_SIZE+2, x*CELL_SIZE+2,
                       (y+1)*CELL_SIZE-2, (x+1)*CELL_SIZE-2, fill="white")
    mark_last(x, y)

    if check_win(x, y):
        messagebox.showinfo("게임 종료", "AI(백)가 이겼습니다!")
        reset_board()

def click(event):
    global current_player
    if current_player != PLAYER:
        return

    x = event.y // CELL_SIZE
    y = event.x // CELL_SIZE
    if board[x][y] != 0:
        return

    board[x][y] = PLAYER
    canvas.create_oval(y*CELL_SIZE+2, x*CELL_SIZE+2,
                       (y+1)*CELL_SIZE-2, (x+1)*CELL_SIZE-2, fill="black")
    mark_last(x, y)

    if check_win(x, y):
        messagebox.showinfo("게임 종료", "플레이어(흑)가 이겼습니다!")
        reset_board()
        return

    current_player = AI
    root.after(300, ai_turn)

def ai_turn():
    global current_player
    ai_move()
    current_player = PLAYER

def draw_board():
    for i in range(SIZE+1):
        canvas.create_line(0, i*CELL_SIZE, SIZE*CELL_SIZE, i*CELL_SIZE)
        canvas.create_line(i*CELL_SIZE, 0, i*CELL_SIZE, SIZE*CELL_SIZE)

def reset_board():
    global board, current_player, last_mark
    board = [[0 for _ in range(SIZE)] for _ in range(SIZE)]
    current_player = PLAYER
    last_mark = None
    canvas.delete("all")
    draw_board()

root = tk.Tk()
root.title("오목 AI (중수) - 마지막 수 표시")

canvas = tk.Canvas(root, width=SIZE*CELL_SIZE, height=SIZE*CELL_SIZE)
canvas.pack()
canvas.bind("<Button-1>", click)

reset_button = tk.Button(root, text="재시작", command=reset_board)
reset_button.pack()

draw_board()
root.mainloop()
