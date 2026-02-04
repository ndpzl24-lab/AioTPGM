table = []

def printList(twoDL):
    for row in range(len(twoDL)):
        for col in range(len(twoDL[0])):
            print(twoDL[row][col], end=" ")
        print()
        
def init(twoDL):
    for row in range(len(twoDL)):
        for col in range(len(twoDL[0])):
            if(row+col)%2 == 0:
                table[row][col] =1
                
for row in range(10):
    table += [[0] * 10]
    
init(table) 
printList(table)
