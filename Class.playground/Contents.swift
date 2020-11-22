import UIKit

protocol PeopleProtocol{
    var name: String { get set }
    var age: Int { get set }
}

class People: PeopleProtocol {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func getInfo(){
        print("Имя \(name), \(age) лет")
    }
}

class Developer: People {
    
    enum Language: String {
        case swift = "Swift"
        case java = "Java"
        case c = "C"
        case cpp = "C++"
        case cSharp = "CSharp"
        case objectiveC = "Objective-C"
    }
    
    enum Level: String {
        case junior = "Junior"
        case middle = "Middle"
        case senior = "Senior"
    }
    
    var lang: Language
    var level: Level
    
    init(name: String, age: Int, lang: Language, level: Level) {
        self.lang = lang
        self.level = level
        super.init(name: name, age: age)
    }
    
    override func getInfo(){
        print("Имя \(name), \(age) лет. Язык программирования \(lang.rawValue), уровень \(level.rawValue).")
    }
}

let dan = Developer(name: "Dan", age: 30, lang: .swift, level: .junior)
dan.getInfo()

let pavel = Developer(name: "Pavel Koyushev", age: 33, lang: .swift, level: .junior)
pavel.getInfo()

///==================================

class Rectangle {
    var length = Double()
    var width = Double()
    
    init(length: Double, width: Double) {
        self.length = length
        self.width = width
        if length == width {print("is square")}
    }
    
    func area() -> Double {
        return length*width
    }
    
    func perimeter() -> Double {
        return length*2+width*2
    }
    
    func isSquare() -> Bool{
        var s: Bool
        if length == width {
            s = true
        } else {
            s = false
        }
        return s
    }
}

var rectA = Rectangle(length: 5, width: 5)

rectA.area()
rectA.perimeter()
rectA.isSquare()

///===================================







