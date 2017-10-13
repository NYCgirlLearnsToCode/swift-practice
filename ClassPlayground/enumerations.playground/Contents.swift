

import Cocoa
/*
 map (by doubling)
 filter(by evens)
 reduce
 */
//enums are specifically for organizing groupss or lists of related values
//enumerations are capital first camelcased
//enum values must be unique
//write a function that either maps an arr by doubling it, or filtering it by removing odds
/*
enum HigherOrderedFunction {
    case map
    case filter
}

func higherOrderFunction(functionType: String, arr: [Double]) -> [Double] {
    if functionType == "map" {
        return arr.map{$0 * 2}
    }
    if functionType == "filter" {
//        return arr.filter{$0%2 == 0}
    }
    return []
}
//define an enum named CompassPoint
enum CompassPoint {
    case north
    case south
    case east
    case west
}

//Create an instance of a CompassPoint
let northDirection = CompassPoint.north
let directionTwo = CompassPoint.south
//Make an an enum that represents:
//
//Left and right hands
enum Hand {
    case left
    case right
}
//Days in a week
enum DayInAWeek: Int{
    case monday = 1
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}
//Blood types (A, B, O, AB)

enum BloodType {
    case A, B, O, AB

}
//Coins in U.S currency

enum UsCoin: Double {
    case dime = 0.01
    case quarter = 0.25
    case nickel = 0.05
    case penny = 0.10
    case dollar = 1.00
    case halfDollar = 0.50
}

//Enums are type, just as Strings are
let myCoinCollection: [UsCoin] = [.penny, .dollar, .quarter]
let myCoinCollection2: [UsCoin: Int] = [.penny: 300,
                                        .dollar: 204,
                                        .quarter: 42]
myCoinCollection2[.quarter]

//enums are good for writing wht to do when errors
enum ErrorCode {
    case badInput
    case noNetwork
    case fileNotFound
}

let error = ErrorCode.noNetwork

switch error {
case .badInput:
    print("please re-enter your info.")
case .noNetwork:
    print("please check your connection and try again.")
case .fileNotFound:
    print("missing file, please make sure your file exists.")
}


//Instantiate a new enum, and switch on it to:
//Print out whether or not the left hand
let leftOrRight = Hand.left
switch leftOrRight {
case .left:
    print("Left hand")
case .right:
    print("Right hand")
}


//Print out whether or not it's a weekday
let weekdayOrNot = DayInAWeek.friday
switch weekdayOrNot {
case .saturday, .sunday:
    print("woohoo weekend!")
default:
    print("It's a weekday T-T")
}
//Print out whether or not the blood type is type B
let whatBloodType = BloodType.A
switch whatBloodType {
case .A, .AB, .O:
    print("Not type B")
case .B:
    print("Blood type B")
}
//Print out if the value of the coin is 10 cents or higher
//let tenCentsOrHigher = UsCoin.nickel
//switch tenCentsOrHigher {
//case .dime, .quarter, .halfDollar, .dollar:
//    print(">10 cents")
//default:
//    print("< 10!")
//}

//cannot add to enums once defined
enum NYCBoro: String {
    case queens = "Queens"
    case brooklyn = "Brooklyn"
    case manhattan = "Manhattan"
    case bronx = "Bronx"
    case statenIsland = "Staten Island"
}

let myBoro = NYCBoro.queens
//access the raw value of an instance of an enum
myBoro.rawValue

let yourBoro = NYCBoro(rawValue: "Bronx")
//Redefine each of your enums in the previous exercises to have raw values
let myCoin = UsCoin(rawValue: 0.25)
//Than, instantiate a new instance of each enum with its raw value
//What happens if you give an invalid raw value to instantiate an enum? Try it and see.

if let myCoin2 = UsCoin(rawValue: 0.15) {
    switch myCoin2{
    case .dime, .quarter, .halfDollar, .dollar:
    print("this is worth at least $0.10")
    default:
        print("worth less than 10 cents")
}
}else{
    print("You can't make a coin like that")
}

if let myCoin3 = UsCoin(rawValue: 0.50) {
    print(myCoin3.rawValue)
}
let myDay2 = DayInAWeek.tuesday
myDay2.rawValue
*/
//
//enum Barcode {
//    case upc(Int, Int, Int, Int)
//    case qrCode(String)
//}
//let myBarcode = Barcode.upc(5,9,3,0)
//let myBarcode2 = Barcode.qrCode("ABCDEFGHIJ")
////only way to get associated value is to switch on it
////enum can only have either a raw value or associated value, not both
//switch myBarcode {
//case .upc(let numberSystem, let manufacturer, let product, let check):
//    print("It's a upc code")
//    print(numberSystem, manufacturer, product, check)
//case .qrCode(let storedStr):
//    print("It's a qr code with a string of \(storedStr)")
//}
enum Marker: String {
    case positive
    case negative
}
enum Bloodtype {
    case A(Marker)
    case B(Marker)
    case O(Marker)
    case AB(Marker)
}

let myBloodtype = Bloodtype.A(.positive)
let anotherType = Bloodtype.O(.negative)

//Looking for O+

switch anotherType {
case .O(let marker):
    switch marker {
    case .positive:
        print("It's a match!")
    case .negative:
        print("It's not a match, but it is type O")
    }
default:
    print("Not type O")
}
enum HigherOrderedFunction {
    case filter((Int) -> Bool)
    case map((Int) -> Int)
    case sort((Int, Int) -> Bool)
}

//func apply(function:HigherOrderedFunction, on arr: [Int]) -> [Int] {
//    switch function {
//    case .filter(let filterClosure):
//        return arr.filter(filterClosure)
//    case .map:
//        return arr.map(mapClosure)
//    case .sort:
//        return arr.sorted(by: sortClosure)
//    }
//}
//
//

//enums can have things & functions stored in them
enum Color {
    case blue, green, red
    func printCurrentColor() {
        switch self {
        case .blue:
            print("blue")
        case .green:
            print("green")
        case .red:
            print("red")
        }
    }
}

let myColor = Color.blue
myColor.printCurrentColor()













