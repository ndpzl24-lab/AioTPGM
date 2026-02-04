inFile = open("development.png", "rb")
outFile = open("associ.png", "wb")

while True:
    copyBuffer = inFile.read(1024)
    if not copyBuffer:
        break
    outFile.write(copyBuffer)
    
inFile.close()
outFile.close()
print(f"{inFile}을 {outFile}로 복사하였습니다.")    
