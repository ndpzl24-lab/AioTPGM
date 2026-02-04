from tkinter import *
import random

# 창 설정
WIDTH = 500
HEIGHT = 400
window = Tk()
window.title("벽돌깨기 게임")
canvas = Canvas(window, width=WIDTH, height=HEIGHT, bg="black")
canvas.pack()

# 패들
PADDLE_WIDTH = 80
PADDLE_HEIGHT = 10
paddle = canvas.create_rectangle(WIDTH//2 - PADDLE_WIDTH//2, HEIGHT-30,
                                 WIDTH//2 + PADDLE_WIDTH//2, HEIGHT-20, fill="white")

# 공
BALL_RADIUS = 8
ball = canvas.create_oval(WIDTH//2 - BALL_RADIUS, HEIGHT//2 - BALL_RADIUS,
                          WIDTH//2 + BALL_RADIUS, HEIGHT//2 + BALL_RADIUS, fill="red")
ball_dx = 3  # x 속도
ball_dy = -3  # y 속도

# 벽돌
BRICK_ROWS = 5
BRICK_COLS = 8
BRICK_WIDTH = 50
BRICK_HEIGHT = 20
BRICK_PADDING = 5
BRICK_OFFSET_TOP = 30
BRICK_OFFSET_LEFT = 10
bricks = []

for row in range(BRICK_ROWS):
    brick_row = []
    for col in range(BRICK_COLS):
        x1 = BRICK_OFFSET_LEFT + col*(BRICK_WIDTH + BRICK_PADDING)
        y1 = BRICK_OFFSET_TOP + row*(BRICK_HEIGHT + BRICK_PADDING)
        x2 = x1 + BRICK_WIDTH
        y2 = y1 + BRICK_HEIGHT
        brick = canvas.create_rectangle(x1, y1, x2, y2, fill="skyblue", outline="white")
        brick_row.append(brick)
    bricks.append(brick_row)

# 점수 레이블
score = 0
score_label = Label(window, text=f"점수: {score}", font=("Arial", 12), bg="black", fg="white")
score_label.pack()

# 패들 이동
paddle_speed = 20
def move_paddle(event):
    x1, y1, x2, y2 = canvas.coords(paddle)
    if event.keysym == "Left" and x1 > 0:
        canvas.move(paddle, -paddle_speed, 0)
    elif event.keysym == "Right" and x2 < WIDTH:
        canvas.move(paddle, paddle_speed, 0)

window.bind("<Left>", move_paddle)
window.bind("<Right>", move_paddle)

# 게임 루프
def game_loop():
    global ball_dx, ball_dy, score

    # 공 이동
    canvas.move(ball, ball_dx, ball_dy)
    bx1, by1, bx2, by2 = canvas.coords(ball)

    # 벽 충돌
    if bx1 <= 0 or bx2 >= WIDTH:
        ball_dx = -ball_dx
    if by1 <= 0:
        ball_dy = -ball_dy
    if by2 >= HEIGHT:
        canvas.create_text(WIDTH//2, HEIGHT//2, text="게임 오버!", font=("Arial", 24), fill="red")
        return  # 게임 종료

    # 패들 충돌
    px1, py1, px2, py2 = canvas.coords(paddle)
    if bx2 >= px1 and bx1 <= px2 and by2 >= py1 and by1 <= py2:
        ball_dy = -ball_dy
        # 공이 패들 위쪽으로 튀도록 위치 조정
        canvas.coords(ball, bx1, py1 - BALL_RADIUS*2, bx2, py1)

    # 벽돌 충돌
    for row in bricks:
        for brick in row:
            if brick:  # 아직 벽돌이 남아있으면
                x1, y1, x2, y2 = canvas.coords(brick)
                if bx2 >= x1 and bx1 <= x2 and by2 >= y1 and by1 <= y2:
                    ball_dy = -ball_dy
                    canvas.delete(brick)
                    row[row.index(brick)] = None  # 제거 표시
                    score += 10
                    score_label.config(text=f"점수: {score}")

    window.after(20, game_loop)

# 게임 시작
game_loop()
window.mainloop()
