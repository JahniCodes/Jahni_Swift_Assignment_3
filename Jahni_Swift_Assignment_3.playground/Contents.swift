import Foundation


class Ship{
    var name: String
    let year: String
    var countryOfOrigin: String
    
    init(name: String, year: String, countryOfOrigin: String) {
        
        self.name = name
        self.year = year
        self.countryOfOrigin = countryOfOrigin
    }
}

class CruiseShip: Ship{
    let maxCapacity: Int
    var oceanOfOperation: String
    var currentPassengerCount: Int = 0
    
    init(name: String, year: String, countryOfOrigin: String,maxCapacity: Int, oceanOfOperation: String, currentPassengerCount: Int) {
        self.maxCapacity = maxCapacity
        self.oceanOfOperation = oceanOfOperation
        self.currentPassengerCount = currentPassengerCount
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    func addPassenger() -> Int{
        if self.currentPassengerCount < self.maxCapacity{
            self.currentPassengerCount += 1
        }
        return currentPassengerCount
    }
    
    func printPassengerCount(){
        print("Current Passengers: \(self.currentPassengerCount)")
    }
}

class CargoShip: Ship{
    var maxCargoCapacity : Int
    var currentCargoCount : Int
    var isInternational : Bool
    
    init(name: String, year: String, countryOfOrigin: String,maxCargoCapacity: Int, currentCargoCount: Int, isInternational: Bool) {
        self.maxCargoCapacity = maxCargoCapacity
        self.currentCargoCount = currentCargoCount
        self.isInternational = isInternational
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    //add a method to add cargo if the ship is not at max capacity
    func addCargo() -> Int{
        if self.currentCargoCount < self.maxCargoCapacity{
            self.currentCargoCount += 1
            
        }
        return currentCargoCount
    }
    //add a method to print the current cargo count
    func printCargoCount(){
        print("Current cargo: \(self.currentCargoCount)")
    }
}

class PirateShip: Ship{
    var maxTreasureCapacity : Int
    var currentTreasureCount : Int
    var numberOfCannons : Int
    
    init(name: String, year: String, countryOfOrigin: String,maxTreasureCapacity: Int, currentTreasureCount: Int, numberOfCannons: Int) {
        self.maxTreasureCapacity = maxTreasureCapacity
        self.currentTreasureCount = currentTreasureCount
        self.numberOfCannons = numberOfCannons
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    //add a method to add treasure if the ship is not at max capacity
    func addTreasure() -> Int{
        if self.currentTreasureCount < self.maxTreasureCapacity{
            self.currentTreasureCount += 1
            
        }
        return self.currentTreasureCount
    
    }
    //add a method to print the current treasure count
    func printTreasureCount(){
        print("Current Treasure: \(self.currentTreasureCount)")
    }
}



let theFlyingDutchman = PirateShip(name: "theFlyingDutchman", year: "1275", countryOfOrigin: "The Netherlands", maxTreasureCapacity: 900, currentTreasureCount: 899, numberOfCannons: 200)



//Create an instance of 1 of the subclasses and using print statements, demonstrate the use of ALL the properties and methods of that class as well as the superclass 🛠 you can do this anyway you like, but all props and methods must be demonstrated 👍
print("""
    Name: \(theFlyingDutchman.name)
    Year: \(theFlyingDutchman.year)
    Origin: \(theFlyingDutchman.countryOfOrigin)
    Cannons: \(theFlyingDutchman.numberOfCannons)
    Max Treasure: \(theFlyingDutchman.maxTreasureCapacity)
    Current Treasure: \(theFlyingDutchman.currentTreasureCount)
""")

theFlyingDutchman.addTreasure()
theFlyingDutchman.currentTreasureCount
theFlyingDutchman.addTreasure()
theFlyingDutchman.printTreasureCount()
