class Car:
    def __init__(self, make, model, color, price):
        self.make = make
        self.model = model
        self.color = color
        self.price = price
    def setMake(self, make):
        self.make = make
    def getMake(self):
        return self.make
    def displayCarInfo(self):
        print(f"차량 = {self.make}, {self.model}, {self.color},{self.price}")  
                  

class ElectricCar(Car):
    def __init__(self, make, model, color, price, batterySize):
        super().__init__(make, model, color, price)
        self.batterySize = batterySize
    def setBatterySize(self, batterySize):
        self.BatterySize= batterySize
    def getBatterySize(self):    
        return self.batterySize
    def displayElectricCarInfo(self):
        super().displayCarInfo()
        print(f"{self.batterySize}")
        

car1 = Car("Hyundai", "Model H", "Gray", "6000")
eCar1 = ElectricCar("Daewoo", " D model1", "White", 7000, 240)
car1.displayCarInfo()
eCar1.displayElectricCarInfo()