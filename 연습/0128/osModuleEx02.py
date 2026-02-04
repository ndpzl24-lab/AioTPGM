import os

fileList = os.listdir()

for f in fileList:
    infile = open(f, "r", encoding="utf-8")
    for line in infile:
        e =line.rstrip()
        if "open" in e:
            print(f, ":", e)
    
    infile.close()
        