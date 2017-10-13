//: Playground - noun: a place where people can play

import Cocoa
/*
 var str = "Hello, playground"
 //classes are a ref type, support inheritance
 //cannot get all the properties of a class, cannot iterate through a class, no sequencing bc you can store anythign you want so no set size
 //classes:
 class Person {
 var name: String?
 var age: Int?//writing a ? is the equiv of nil value
 }
 //no memberwise initializer; either give all properties an initial value or write your own initializer
 let newPerson = Person()
 let alsoNewPerson = newPerson
 alsoNewPerson.name = "K"
 alsoNewPerson.name
 newPerson.name
 //classes support inheritance
 class Astronaut {
 var name: String = "Unnamed Astronaut"
 }
 let spaceGal = Astronaut()
 
 //Structs
 //do not support inheritance
 struct Human {
 var name: String
 var age: Int
 }
 
 //memberwise initializer given by default
 var newHuman = Human(name: "Joe", age: 49)
 //get values
 newHuman.age
 //set values
 newHuman.age = 50
 //structs are a value type
 //copy all the properties of newHuman into a totally new Object named newHumanCopy
 //do not support inheritance
 var newHumanCopy = newHuman
 newHumanCopy.name = "K"
 newHumanCopy.name
 newHuman.name
 
 //Method is a function defined in a class
 //Instance methid
 
 enum Color {
 case red, green, blue
 }
 
 class Balloon {
 static let bestBalloon = Balloon()//static says it is on type not on instance
 static func balloonFact() {
 print("Balloons are often filled with helium")
 }
 var color: Color = .red
 var isFilled: Bool = false
 //Will change instance of balloon to a new color & return a new color
 func changeColor(to newColor: Color) -> Color {//instance method, can return nothing or a type
 let oldColor = self.color
 self.color = newColor //referring to instance of balloon
 return oldColor
 }
 }
 
 let myBalloon = Balloon()
 let colorBeforeChanging = myBalloon.changeColor(to: .blue)
 print("You have changed a \(colorBeforeChanging) balloon to a \(myBalloon.color) balloon")
 myBalloon.changeColor(to: .blue)
 print(myBalloon.color)
 //Class property
 Int.max
 Double.pi
 Float.pi
 Balloon.bestBalloon.color
 
 //Class method
 Balloon.balloonFact()
 
 */

//Initializers
/*
 class Fahrenheit {
 var temperature: Double
 init(temperature: Double) {//user input values, designated initializer
 print("you just made a newFahrenheit")
 self.temperature = temperature//referring to
 }
 }
 
 let myTemp = Fahrenheit(temperature: 50)
 print(myTemp.temperature)
 
 //and inheritance
 
 class Person {
 var name: String
 var yearBorn: Int
 var yearDied: Int?
 var description: String {
 return "\(name) was born in \(yearBorn)"
 }
 
 init(name: String, yearBorn: Int, yearDied: Int?) {
 self.name = name
 self.yearBorn = yearBorn
 self.yearDied = yearDied
 }
 init(name: String, yearBorn: Int) {
 print("In class Person making someone with the name \(name)")
 self.name = name
 self.yearBorn = yearBorn
 //self.yearDied = nil
 }
 }
 
 let newPerson = Person(name: "Bill", yearBorn: 1974, yearDied: nil)
 //let personTwo = Person(name: "Kacey", yearBorn: 1990)
 
 class Musician: Person {
 var instrument: String
 init(name: String, yearBorn: Int, instrument: String) {
 print("In class Musician setting the instrument to \(instrument)")
 self.instrument = instrument
 super.init(name: name, yearBorn: yearBorn)
 }
 
 }
 
 class Beatle: Musician {
 var songsComposed: [String]
 init(songsComposed: [String], name: String, yearBorn: Int, instrument: String) {
 print("In class Beatle looking at the songs \(songsComposed)")
 self.songsComposed = songsComposed
 super.init(name: name, yearBorn: yearBorn, instrument: instrument)
 }
 }
 let ringo = Beatle(songsComposed: ["Hey Jude", "Yesterday"], name: "Ringo Starr", yearBorn: 1940, instrument: "Drums")
 
 ringo.description
 */

//let ringo = Musician/(name: "Ringo Starr", yearBorn: 1940, instrument: "Drums")

//let ringo = Musician/(name: "Ringo Starr", yearBorn: 1940, instrument: "Drums")
//    init(name:String, yearBorn:Int) {// can have more than 1 initializer
//        print("In class Person making someone with the name \(name)")
//        self.name = name
//        self.yearBorn = yearBorn
//
//    }
//}
//let newPerson = Person(name: "Bill", yearBorn: 1974, yearDied: nil)
//let personTwo = Person(name: "Kacey", yearBorn: 1990)
//
//class Musician: Person {//inherits properties from person including initializers
//    var instrument: String
//    init(name: String, yearBorn: Int, instrument: String){
//        self.instrument = instrument
//        super.init(name: name, yearBorn: yearBorn)//makes sure that we are initializing all the properties that our class has
//    }
//}
//let ringo = Musician(name: "Ringo Starr", yearBorn: 1940, instrument: Musician "Drums")
//
class TwoDPoint {
    var x: Double
    var y: Double
    init(x: Double, y: Double) {
        print("making a point w designated initializer")
        self.x = x
        self.y = y
    }
    convenience init() {//ONLY convenience lets you use self.init, points to designated intializer
        self.init(x: 0, y: 0)// talking about this method, go to where this initializer is & set up these values
    }
    convenience init(x: Double) {//It has three convience initializers. What they do in effect is assign any properties to 0 that the user doesn't set themselves.
        self.init(x: x, y: 0)// We can see that they each call self.init, because every convience initializer must call a designated initializer at some point to ensure that all properties are given an initial value.
    }
    convenience init(y: Double) {// can have anything in the parameters
        self.init(x: 0, y: y)
    }
    convenience init(str: String) {
        switch str {
        case "Origin":
            self.init()
        case "X-axis":
            self.init(x: Double(arc4random_uniform(10)), y: 0)
        case "Y-axis":
            self.init(x: 0, y: Double(arc4random_uniform(10)))
        default:
            self.init(x:8)
        }
    }
    
}
TwoDPoint()
let myPoint = TwoDPoint(x: 4.5, y: 5.2)// talking about this method, go to where this initializer is & set up these values
let myPoint2 = TwoDPoint()
let myPoint3 = TwoDPoint(x:10)
let myPoint4 = TwoDPoint(y: 4)
//3d points is x,y, z plane


class ThreeDPoint: TwoDPoint {
    var z: Double
    init(x: Double, y: Double, z: Double) {
        self.z = z
        super.init(x: x, y: y) //super class delegates up
    }
    convenience override init(x: Double, y: Double) {// allows you to access all convenience initis in the superclass
        self.init(x: x, y: y, z: 0)
    }
}

let myPointt = ThreeDPoint(x: 4, y: 1, z: 10)
let myPointt2 = ThreeDPoint()


class Animal {
    var numberOfLegs: Int {
        willSet {
            print("I am about to change the number of legs to \(newValue)")
        }
        didSet {
            print("I changed the number of legs from \(oldValue)")
        }
    }
    init?(numberOfLegs: Int) {// failable initializer, creating a condition for when the program might mess up, without crashing it bc of the guard statement
        guard numberOfLegs >= 0 else {//guard is if that isn't true return nil
            return nil
        }
        self.numberOfLegs = numberOfLegs
    }
}

let octopus = Animal(numberOfLegs: 8)!//unwrapped here bc its a optional from failable initializer
octopus.numberOfLegs
let cow = Animal(numberOfLegs: 4)
cow!.numberOfLegs
let snake = Animal(numberOfLegs: 0)
let weirdThing = Animal(numberOfLegs: -500)

enum BloodType: String {
    case A, O, AB, B
}

let myType = BloodType(rawValue: "Blrop")

enum Color {
    case blue, green, red, error
    init(c: Character) {
        switch String(c).lowercased() {
        case "b":
            self = .blue
        case "g":
            self = .green
        case "r":
            self = .red
        default:
            self = .error
        }
    }
}

  let myColor = Color(c: "b")


func bmi(_ weight: Int, _ height: Double) -> String {
    let bmi = Double(weight) / (height * height)

    if bmi <= 18.5 {return "Underweight"}

    if bmi <= 25.0 {return "Normal"}

    if bmi <= 30.0 {return "Overweight"}

    return "Obese"
}




