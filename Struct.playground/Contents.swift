import UIKit

var str = "Hello, playground"

struct Car {
  var make: String
  var model: String
  var year: Int
  var topSpeed: Int
    
  func startEngine() -> String {
    return "The \(year) \(make) \(model)’s engine has started."
  }
    
  func drive() -> String {
    return "The \(year) \(make) \(model) is moving."
  }
    
  func park() -> String {
    return "The \(year) \(make) \(model) is parked."
  }
}

let firstCar = Car(make: "Honda", model: "Civic", year: 2010, topSpeed: 120)
let secondCar = Car(make: "Ford", model: "Fusion", year: 2013, topSpeed: 125)

firstCar.startEngine()
firstCar.drive()
firstCar.park()
///==================================

struct Temperature {
  var celsius: Double
  var fahrenheit: Double
  var kelvin: Double
    
  init(celsius: Double) {
    self.celsius = celsius
    fahrenheit = celsius * 1.8 + 32
    kelvin = celsius + 273.15
  }
    
  init(fahrenheit: Double) {
    self.fahrenheit = fahrenheit
    celsius = (fahrenheit - 32) / 1.8
    kelvin = celsius + 273.15
  }
    
  init(kelvin: Double) {
    self.kelvin = kelvin
    celsius = kelvin - 273.15
    fahrenheit = celsius * 1.8 + 32
  }
}

let currentTemperature = Temperature(celsius: 18.5)
let boiling = Temperature(fahrenheit: 212.0)
let freezing = Temperature(kelvin: 273.15)
boiling.kelvin
freezing.celsius
freezing.fahrenheit
///==================================

struct Size {
  var width: Double
  var height: Double
    
  func area() -> Double {
    width * height
  }
}

let someSize = Size(width: 20.0, height: 11.0)
let area = someSize.area()

///========================

struct Odometer {
  var count: Int = 0
    
  mutating func increment() {
    count += 1
  }
    
  mutating func increment(by amount: Int) {
    count += amount
  }
    
  mutating func reset() {
    count = 0
  }
}

var odometer = Odometer()
odometer.increment()
odometer.increment(by: 15)
odometer.reset()
///======================

struct StepCounter {
    var totalSteps: Int = 0 {
        willSet {
            print("About to set totalSteps to \(newValue)")
        }
        didSet {
            if totalSteps > oldValue  {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

var stepCounter = StepCounter()
stepCounter.totalSteps = 500
stepCounter.totalSteps = 10_000

///===========================


