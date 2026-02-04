import tkinter as tk
from collections import deque
from tkinter import messagebox
import random

class BadukGame:
    def __init__(self, master, size=19, cell_size=30):
        self.master = master
        self.size = size
        self.cell_size = cell_size
        self.turn = 'black'
        self.board = [[None]*size for _ in range(size)]
        self.move_history = []
        self.pass_count = 0
        self.move_number = 1
        self.ai_level = None
        self.ai_color = None

        # GUI
        self.canvas = tk.Canvas(master, width=size*cell_size, height=size*cell_size, bg='#F0D9B5')
        self.canvas.grid(row=0, column=0, padx=10, pady=10)
        self.canvas.bind("<Button-1>", self.on_click)

        self.info_frame = tk.Frame(master)
        self.info_frame.grid(row=0, column=1, sticky="n")

        self.black_label = tk.Label(self.info_frame, text="흑 돌: 0", font=("Arial", 14))
        self.black_label.pack(pady=5)
        self.white_label = tk.Label(self.info_frame, text="백 돌: 0", font=("Arial", 14))
        self.white_label.pack(pady=5)

        self.pass_button = tk.Button(self.info_frame, text="패스", command=self.pass_turn, font=("Arial", 12))
        self.pass_button.pack(pady=5)

        self.undo_button = tk.Button(self.info_frame, text="착수 취소", command=self.undo_move, font=("Arial", 12))
        self.undo_button.pack(pady=5)

        self.mark_dead_button = tk.Button(self.info_frame, text="죽은 돌 표시", command=self.mark_dead_stones, font=("Arial", 12))
        self.mark_dead_button.pack(pady=5)

        self.ai_frame = tk.Frame(self.info_frame)
        self.ai_frame.pack(pady=10)
        tk.Label(self.ai_frame, text="AI 난이도 선택:", font=("Arial", 12)).pack()
        for lvl in ['초보', '중수', '고수']:
            tk.Button(self.ai_frame, text=lvl, command=lambda l=lvl: self.set_ai(l)).pack(pady=2)

        self.draw_board()

    # AI 설정
    def set_ai(self, level):
        self.ai_level = level
        self.ai_color = 'white'  # AI는 항상 백
        messagebox.showinfo("AI 선택", f"{level} 난이도 AI와 대결합니다!")
        if self.turn == self.ai_color:
            self.master.after(300, self.ai_move)

    # 바둑판 그리기
    def draw_board(self):
        self.canvas.delete("line")
        for i in range(self.size):
            self.canvas.create_line(self.cell_size/2, self.cell_size/2 + i*self.cell_size,
                                    self.cell_size/2 + (self.size-1)*self.cell_size, self.cell_size/2 + i*self.cell_size, tags="line")
            self.canvas.create_line(self.cell_size/2 + i*self.cell_size, self.cell_size/2,
                                    self.cell_size/2 + i*self.cell_size, self.cell_size/2 + (self.size-1)*self.cell_size, tags="line")
        points = [3, 9, 15]
        for x in points:
            for y in points:
                self.canvas.create_oval(
                    x*self.cell_size-3+self.cell_size/2, y*self.cell_size-3+self.cell_size/2,
                    x*self.cell_size+3+self.cell_size/2, y*self.cell_size+3+self.cell_size/2,
                    fill='black', tags="line"
                )

    # 사용자가 클릭했을 때
    def on_click(self, event):
        if self.turn == self.ai_color:
            return  # AI 차례이면 사용자가 놓지 못함
        x = round((event.x - self.cell_size/2) / self.cell_size)
        y = round((event.y - self.cell_size/2) / self.cell_size)
        if 0 <= x < self.size and 0 <= y < self.size and self.board[y][x] is None:
            if self._place_stone_at(x, y):
                if self.turn == self.ai_color and self.ai_level:
                    self.master.after(300, self.ai_move)

    # 실제 착수
    def _place_stone_at(self, x, y):
        self.board[y][x] = self.turn
        captured = self.check_captures(x, y, self.turn)
        if not self.has_liberty(x, y, self.turn) and not captured:
            self.board[y][x] = None
            return False
        self.move_history.append((x, y, self.turn))
        self.pass_count = 0
        self.draw_stones()
        self.move_number += 1
        self.turn = 'white' if self.turn == 'black' else 'black'
        self.update_counters()
        return True

    # AI 착수
    def ai_move(self):
        moves = [(x, y) for y in range(self.size) for x in range(self.size) if self.board[y][x] is None]
        if not moves:
            self.pass_turn()
            return
        if self.ai_level == '초보':
            random.shuffle(moves)
            for x, y in moves:
                if self._place_stone_at(x, y):
                    return
        elif self.ai_level == '중수':
            moves.sort(key=lambda m: sum(self.board[ny][nx]==self.ai_color for nx, ny in self.neighbors(*m)))
            for x, y in moves:
                if self._place_stone_at(x, y):
                    return
        elif self.ai_level == '고수':
            random.shuffle(moves)
            safe_moves = []
            for x, y in moves:
                self.board[y][x] = self.ai_color
                captured = self.check_captures(x, y, self.ai_color)
                safe = self.has_liberty(x, y, self.ai_color) or captured
                self.board[y][x] = None
                if safe:
                    safe_moves.append((x, y))
            if safe_moves:
                x, y = random.choice(safe_moves)
                self._place_stone_at(x, y)
            else:
                x, y = random.choice(moves)
                self._place_stone_at(x, y)

    # 돌 그리기 + 착수 번호
    def draw_stones(self):
        self.canvas.delete("stone")
        for y in range(self.size):
            for x in range(self.size):
                color = self.board[y][x]
                if color:
                    self.canvas.create_oval(
                        x*self.cell_size - self.cell_size/2 + self.cell_size/2,
                        y*self.cell_size - self.cell_size/2 + self.cell_size/2,
                        x*self.cell_size + self.cell_size/2 + self.cell_size/2,
                        y*self.cell_size + self.cell_size/2 + self.cell_size/2,
                        fill=color, tags="stone"
                    )
        # 착수 번호 표시
        for i, (x, y, color) in enumerate(self.move_history, start=1):
            self.canvas.create_text(
                x*self.cell_size+self.cell_size/2, y*self.cell_size+self.cell_size/2,
                text=str(i), fill="white" if color=="black" else "black", font=("Arial", 10)
            )

    # 주변 좌표
    def neighbors(self, x, y):
        for dx, dy in [(-1,0),(1,0),(0,-1),(0,1)]:
            nx, ny = x+dx, y+dy
            if 0<=nx<self.size and 0<=ny<self.size:
                yield nx, ny

    # 자유도 확인
    def has_liberty(self, x, y, color):
        visited = set()
        queue = deque([(x,y)])
        while queue:
            cx, cy = queue.popleft()
            visited.add((cx,cy))
            for nx, ny in self.neighbors(cx, cy):
                if self.board[ny][nx] is None:
                    return True
                if self.board[ny][nx] == color and (nx, ny) not in visited:
                    queue.append((nx, ny))
        return False

    # 상대 돌 잡기
    def check_captures(self, x, y, color):
        captured_any = False
        opp_color = 'white' if color=='black' else 'black'
        for nx, ny in self.neighbors(x, y):
            if self.board[ny][nx] == opp_color and not self.has_liberty(nx, ny, opp_color):
                self.remove_group(nx, ny, opp_color)
                captured_any = True
        return captured_any

    # 돌 제거
    def remove_group(self, x, y, color):
        queue = deque([(x,y)])
        while queue:
            cx, cy = queue.popleft()
            if self.board[cy][cx] == color:
                self.board[cy][cx] = None
                for nx, ny in self.neighbors(cx, cy):
                    if self.board[ny][nx] == color:
                        queue.append((nx, ny))

    # 패스
    def pass_turn(self):
        self.pass_count += 1
        if self.pass_count >= 2:
            self.end_game()
        else:
            self.turn = 'white' if self.turn=='black' else 'black'
            if self.turn == self.ai_color and self.ai_level:
                self.master.after(300, self.ai_move)

    # 착수 취소
    def undo_move(self):
        if not self.move_history:
            return
        x, y, color = self.move_history.pop()
        self.board[y][x] = None
        self.move_number -= 1
        self.turn = color
        self.draw_stones()
        self.update_counters()

    # 죽은 돌 표시
    def mark_dead_stones(self):
        dead_list = []
        for y in range(self.size):
            for x in range(self.size):
                if self.board[y][x]:
                    if messagebox.askyesno("죽은 돌 표시", f"{x+1},{y+1} 위치의 {self.board[y][x]} 돌을 죽은 돌로 표시할까요?"):
                        dead_list.append((x,y))
        for x, y in dead_list:
            self.board[y][x] = None
        self.draw_stones()
        self.update_counters()

    # 돌 개수 표시
    def update_counters(self):
        black_count = sum(row.count('black') for row in self.board)
        white_count = sum(row.count('white') for row in self.board)
        self.black_label.config(text=f"흑 돌: {black_count}")
        self.white_label.config(text=f"백 돌: {white_count}")

    # 영역 점수 계산
    def calculate_score(self):
        visited = set()
        black_area, white_area = 0, 0
        for y in range(self.size):
            for x in range(self.size):
                if self.board[y][x] is None and (x,y) not in visited:
                    area, owner = self.flood_fill_area(x, y)
                    visited |= area
                    if owner == 'black':
                        black_area += len(area)
                    elif owner == 'white':
                        white_area += len(area)
        black_count = sum(row.count('black') for row in self.board) + black_area
        white_count = sum(row.count('white') for row in self.board) + white_area
        return black_count, white_count

    def flood_fill_area(self, x, y):
        queue = deque([(x,y)])
        area = set()
        owner = None
        while queue:
            cx, cy = queue.popleft()
            if (cx, cy) in area:
                continue
            area.add((cx, cy))
            for nx, ny in self.neighbors(cx, cy):
                if self.board[ny][nx] is None:
                    queue.append((nx, ny))
                else:
                    if owner is None:
                        owner = self.board[ny][nx]
                    elif owner != self.board[ny][nx]:
                        owner = 'none'
        if owner == 'none':
            owner = None
        return area, owner

    # 게임 종료
    def end_game(self):
        black_score, white_score = self.calculate_score()
        if black_score > white_score:
            winner = '흑'
        elif white_score > black_score:
            winner = '백'
        else:
            winner = '무승부'
        messagebox.showinfo("게임 종료", f"게임 종료!\n흑: {black_score}, 백: {white_score}\n승자: {winner}")
        self.master.destroy()

if __name__ == "__main__":
    root = tk.Tk()
    root.title("AI 바둑 게임 완전판")
    game = BadukGame(root, size=19)
    root.mainloop()
