//: Playground - noun: a place where people can play

import Cocoa
//
////most of enum is defining a enum & switching on it to do something
//enum Coin {
//    case penny, nickel, dime, quarter
//}
////Initializing an enum
//let myCoin: Coin = .penny
//
////switching on myCoin
//switch myCoin {
//case .penny:
//    print("You have a penny")
//default:
//    print("No penny")
//}
//
////defining an enum with a raw value
//enum NYCBoro : String {
//    case queens = "Queens"
//    case brooklyn = "Brooklyn"
//    case statenIsland = "Staten Island"
//}
////Initialize an enum using it's raw value (gives an optional)
//let myBoro = NYCBoro(rawValue: "Brooklyn")
//let noBoro = NYCBoro(rawValue: "Memphis")
//
////get the raw value back out
//myBoro?.rawValue
//
////defining an enum with associate type
//enum FlowerOrder {
//    case roses(count: Int, message: String)
//    case tulips(Int)
//    case lilacs(Int)
//    case noOrder(String)
//}
//
//let orderOne = FlowerOrder.roses(count: 10, message: "For my beloved")
//let orderTwo = FlowerOrder.lilacs(15)
//let orderThree = FlowerOrder.noOrder("Canceled due to rain")
//
//let randomOrder = [orderOne, orderTwo, orderThree][Int(arc4random_uniform(3))]
//
//switch randomOrder {
//case .roses(let number, let message):
//    print("You have an order for \(number) roses with a message: \(message)")
//case .tulips(let number):
//    print("You have an order for \(number) tulips")
//case .lilacs:
//    print("You have an order for some amount of lilacs")
//case .noOrder(let message):
//    print("No order because: \(message)")
//}

//Structs and Classes define new types that can hold any info we want & can be manipulated any way we want

//Types so far
/*
 String
 Arrays
 Ints
 Doubles
 Tuples
 Bools
 Dictionaries
 Closures
 (Enumerated Types)
 Sets
 Ranges
 Optional all of the aboves
 IntFamily
 Character
 Any
 Anytype
 ETC
 */
//class & struct syntax, names are upper Camelcased
class SomeClass {
    // class definition goes here
}

struct SomeStructure {
    // structure definition goes here
}
struct Resolution {//can annotate type or set val as 0
    var width = 0
    var height = 0
}
//2 properties width & height, type infers Int

let myResolution = Resolution()//open close parens is making?
let myArray = Array<Int>() //old school way of declaring array of Ints
let myString = String()
myResolution.height
myResolution.width

class VideoMode {
    var resolution: Resolution = Resolution()
    var interlaced: Bool = false
    var frameRate = 0.0
    var name: String? = nil
}

let myVideoMode = VideoMode()

//struct IdentifyTheError {
//    var propertyOne : String?
//    var propertyTwo: String
//}
//classes are structs that can do more...
class IdentifyTheError { //*in classes, all properties must have initial default values or will have compiler error
    var propertyOne: String = "thing one"
    let propertyTwo: String = "thing two"
}

//with a struct by default you get an initializer

//if class initializers is a let, it just points(refers) to where the value is

class Counter {
    var count = 0 //1 property
    
    func increment() { //3 methods
        count += 1
    }
    func increment(by amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
}
let myCounter = Counter()
myCounter.count
myCounter.increment()
myCounter.count
myCounter.increment(by: 10)
myCounter.count
myCounter.reset()

struct Point {
    var x = 0.0
    var y = 0.0
    func isToTheRightOf(x: Double) -> Bool {
        return self.x > x
    }
}

let pointOne = Point(x: 5, y: 8)
pointOne.isToTheRightOf(x: 4)


//when you want to change a property in a struct you have to change it yourself with "mutating", if you are marking alot of things with mutating you should change it to a class
//Inheritance - doesnt work with structs, only classes
class Vehicle {
    var currentSpeed = 0.0
    var description: String  {
        return "traveling at \(self.currentSpeed) miles per hour"
    }
    func makeNoise() {
        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
    }
}

//Base class does not inherit from any other class

//can use override on any method & property unless it's marked with "final"

//in classes init() is a contructor function that makes an instance of the class, user gives value through init

























