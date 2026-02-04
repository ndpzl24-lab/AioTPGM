import tkinter as tk
import random
import time

# 화면 설정
WIDTH, HEIGHT = 500, 500
PLAYER_SIZE = 20
PLAYER_MAX_SPEED = 12
PLAYER_ACCEL = 0.5
PLAYER_FRICTION = 0.85
BULLET_SIZE = 10
INITIAL_BULLET_SPEED = 3
INITIAL_BULLET_INTERVAL = 500  # 총알 생성 간격(ms)

# 게임 상태
game_over = False
bullets = []

# 플레이어 초기 상태
player_x = WIDTH // 2 - PLAYER_SIZE // 2
player_y = HEIGHT // 2 - PLAYER_SIZE // 2
player_vx = 0
player_vy = 0

# Tkinter 초기화
root = tk.Tk()
root.title("총알 피하기 게임")
canvas = tk.Canvas(root, width=WIDTH, height=HEIGHT, bg="black")
canvas.pack()

# 플레이어 생성
player = canvas.create_rectangle(player_x, player_y,
                                 player_x + PLAYER_SIZE, player_y + PLAYER_SIZE,
                                 fill="blue")

# 점수
start_time = time.time()
score_text = canvas.create_text(60, 20, text="Time: 0s", fill="white", font=("Arial", 14))

# 키 상태
keys = {"Up": False, "Down": False, "Left": False, "Right": False}
def key_press(event):
    if event.keysym in keys:
        keys[event.keysym] = True
def key_release(event):
    if event.keysym in keys:
        keys[event.keysym] = False
root.bind("<KeyPress>", key_press)
root.bind("<KeyRelease>", key_release)

# 총알 난이도 변수
bullet_speed = INITIAL_BULLET_SPEED
bullet_interval = INITIAL_BULLET_INTERVAL
bullet_count_float = 1.0
MAX_BULLETS = 5
last_bullet_time = time.time()

# 총알 생성
def maybe_spawn_bullet():
    global bullet_count_float, bullet_speed, bullet_interval, last_bullet_time
    now = time.time()
    if game_over:
        return
    if (now - last_bullet_time) * 1000 >= bullet_interval:
        bullet_count = int(bullet_count_float)
        for _ in range(bullet_count):
            edge = random.randint(0, 3)
            if edge == 0:  # 위
                x = random.randint(0, WIDTH - BULLET_SIZE)
                y = 0
                vx, vy = 0, bullet_speed
            elif edge == 1:  # 아래
                x = random.randint(0, WIDTH - BULLET_SIZE)
                y = HEIGHT - BULLET_SIZE
                vx, vy = 0, -bullet_speed
            elif edge == 2:  # 왼쪽
                x = 0
                y = random.randint(0, HEIGHT - BULLET_SIZE)
                vx, vy = bullet_speed, 0
            else:  # 오른쪽
                x = WIDTH - BULLET_SIZE
                y = random.randint(0, HEIGHT - BULLET_SIZE)
                vx, vy = -bullet_speed, 0
            bullet_id = canvas.create_rectangle(x, y, x + BULLET_SIZE, y + BULLET_SIZE, fill="red")
            bullets.append({"id": bullet_id, "vx": vx, "vy": vy})
        last_bullet_time = now

        # 난이도 점점 상승
        if bullet_interval > 200:
            bullet_interval *= 0.995
        if bullet_speed < 12:
            bullet_speed *= 1.002
        if bullet_count_float < MAX_BULLETS:
            bullet_count_float += 0.002

# 충돌 검사
def check_collision():
    px1, py1, px2, py2 = canvas.coords(player)
    for b in bullets:
        bx1, by1, bx2, by2 = canvas.coords(b["id"])
        if px1 < bx2 and px2 > bx1 and py1 < by2 and py2 > by1:
            return True
    return False

# 게임 루프 (60fps)
def game_loop():
    global player_vx, player_vy, game_over

    if game_over:
        return

    # 플레이어 가속 이동
    if keys["Left"]:
        player_vx -= PLAYER_ACCEL
    elif keys["Right"]:
        player_vx += PLAYER_ACCEL
    else:
        player_vx *= PLAYER_FRICTION

    if keys["Up"]:
        player_vy -= PLAYER_ACCEL
    elif keys["Down"]:
        player_vy += PLAYER_ACCEL
    else:
        player_vy *= PLAYER_FRICTION

    # 속도 제한
    player_vx = max(-PLAYER_MAX_SPEED, min(PLAYER_MAX_SPEED, player_vx))
    player_vy = max(-PLAYER_MAX_SPEED, min(PLAYER_MAX_SPEED, player_vy))

    canvas.move(player, player_vx, player_vy)

    # 화면 경계 제한
    px1, py1, px2, py2 = canvas.coords(player)
    if px1 < 0:
        canvas.move(player, -px1, 0)
        player_vx = 0
    if px2 > WIDTH:
        canvas.move(player, WIDTH - px2, 0)
        player_vx = 0
    if py1 < 0:
        canvas.move(player, 0, -py1)
        player_vy = 0
    if py2 > HEIGHT:
        canvas.move(player, 0, HEIGHT - py2)
        player_vy = 0

    # 총알 생성
    maybe_spawn_bullet()

    # 총알 이동
    for b in bullets:
        canvas.move(b["id"], b["vx"], b["vy"])

    # 충돌 검사
    if check_collision():
        game_over = True
        canvas.create_text(WIDTH//2, HEIGHT//2, text="GAME OVER", fill="white", font=("Arial", 40))
        return

    # 점수 업데이트
    elapsed = int(time.time() - start_time)
    canvas.itemconfig(score_text, text=f"Time: {elapsed}s")

    # 다음 프레임
    root.after(16, game_loop)  # 약 60fps

# 게임 루프 시작
game_loop()
root.mainloop()
