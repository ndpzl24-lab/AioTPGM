class Television:
    def __init__(self, channel, volume, on):
        self.channel = channel                   #속성, 멤버 변수
        self.volume = volume                     #속성, 멤버 변수
        self.on = on                             #속성, 멤버 변수
    def show(self):
        print(self.channel, self.volume, self.on) 
    def setChannel(self, channel):
        self.channel = channel
    def getChannel(self):
        return self.channel
    def setVolume(self, volume):
        self.volume = volume
    def getVolume(self):
        return self.volume
    def setOn(self, on):
        self.on = on
    def getOn(self):
        return self.on
    
tv1 = Television(15, 10, True)
tv2 = Television(6, 15, True)            

print(tv1.getChannel())