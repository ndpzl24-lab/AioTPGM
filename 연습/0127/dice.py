import random

class Dice:
    def __init__(self, x, y):
        self.__value = 1
        self.x = x
        self.y = y
        self.__size = 30
        
    def rollDice(self):
        self.__value = random.randint(1,6)
    def getDice(self):
        return self.__value           
    def __add__(self, other):
        return self.__value + other.__value
    def printDice(self):
        print(f"({self.__value})") 

    
d1 = Dice(100, 100)
d2 = Dice(120, 30)
d1.rollDice()
d2.rollDice()
d1.printDice()
d2.printDice()
d3 = d1 + d2
print(d3)

#교수님의 답
print(random.randint(2,12))
print(random.randint(1,6) + random.randint(1,6) )
d1.rollDice()
d2.rollDice()
print(d1.getDice() + d2.getDice())