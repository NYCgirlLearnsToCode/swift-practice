//: Playground - noun: a place where people can play

import Cocoa

//a. Define an enumeration called iOSDeviceTypes with member values iPhone, iPad, iWatch. Create a variable called myDevice and assign it one member value.
enum IOSDeviceType{
    case iPhone(String)
    case iPad(String)
    case iWatch(String)
}

let myDevice = IOSDeviceType.iPhone
//b. Adjust your code above so that iPhone and iPad have associated values of type String which represents the model number, eg: iPhone("6 Plus"). Use a switch case and let syntax to print out the model number of each device.
//for associated values, do not need to annotate at enum declaration
let myDeviceNumber = IOSDeviceType.iPhone("6 plus")
let iPadNumber = IOSDeviceType.iPad("3rd gen")
let iWatchNumber = IOSDeviceType.iWatch("2nd gen")
switch myDeviceNumber{
case .iPhone(let model):
    print(IOSDeviceType.iPhone(model))
default:
    print("not avail")
}
switch iPadNumber {
case.iPad(let model):
    print(IOSDeviceType.iPad(model))
default:
    break
}
switch iWatchNumber {
case .iWatch(let model):
    print(IOSDeviceType.iWatch(model))
default:
    break
}

//a. Write an enum called Shape and give it cases for triangle, rectangle, square and hexagon.

enum Shape: String {
    case triangle = "3"
    case rectangle = "4"
    case square = "4 sides"
    case hexagon = "6"
    func numberOfSides() -> String {
        switch self {
        case .triangle:
        return Shape.triangle.rawValue
        case .square:
        return Shape.square.rawValue
        case .rectangle:
        return Shape.rectangle.rawValue
        case .hexagon:
        return Shape.hexagon.rawValue
        
        }
    }
}
//print(Shape.triangle.rawValue)
var myShape = Shape.hexagon
print(myShape.numberOfSides())
//b. Write a method inside that returns how many sides the shape has. Then assign a variable to Shape.pentagon and then print how many sides it has.
//
//c. Re-write Shape so that each case has an associated value of type Int that will represent the length of the sides (assume the shapes are regular polygons so all the sides are the same length) and write a method inside that returns the perimeter of the shape.
//a method is a function that lives in a type
//unwrap associated values safely with let bc they might not have a value
