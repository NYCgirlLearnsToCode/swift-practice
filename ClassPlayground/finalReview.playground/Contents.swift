//: Playground - noun: a place where people can play

import Cocoa
//test is based on midday checkins & 1st half of exercises
/*
//review
//Bool
var myInt = 34
if !(myInt >= 1) {
    print("yes")
}else{
    print("no")
}
//need to know how to uuse unary & ternary operators
!(myInt >= 1) ? print("yes") : print("no")

func checkIfBiggerthanTen(i: Int) -> Bool {
    return i > 10
}

//adding multiplying w Ints
let fiveOverThree = 5/3
let remainderOfThree = 5 % 3

var myInt2 = 10
myInt2 += 4

let biggestInt = Int.max
let biggest8bitInt = Int8.max
let smallest8BitInt = Int8.min

let biggestU8bitInt = UInt8.max

//Doubles
let fiveOverThreeDoubles = 5.0/3.0
let numAsInt = Int(fiveOverThreeDoubles)
//mod doesnt work with doubles
//sometimes has floating point errors

//Arrays
 var nums = [6,3,7,1,4,100,4,-59] //array literal
let nums2:[Int] = []
let nums3 = [Int]()
let nums4 = [UInt32](repeatElement(arc4random_uniform(50), count: 10))

//iterate by accessing values
for num in nums {
    print(num)
}
//iterate by going over indices and accessing value at each index
for i in 0..<nums.count {
    print(nums[i])
}
nums[2] = 10
let thirdElement = nums[2]

nums.append(50)
nums.insert(7, at: 0)
nums.remove(at: 2)

//subarray
let firstFourElements = nums[..<4]
let lastFourElements = nums[(nums.count - 4)...]//array slices do not store indexes
Array(lastFourElements)[0]

nums.contains(4)//contains returns bool
nums.contains(-1)

nums.reverse()//mutates array
nums = nums.reversed()//reversed does not change array but will not save as so have to assign

struct myArray {
   private var arr:[Int] //private makes it not accessible outside of arr
    var description: String {
        return "arr: \(self.arr)"
    }
    init(arr: [Int]){
        self.arr = arr
    }
    mutating func reverse () -> [Int]{
        var newArr = [Int]()//iterating through array backwards
        for i in 0..<arr.count {
            newArr.append(arr[arr.count-1-i])
        }
        arr = newArr
        return arr
    }
    func reversed() -> [Int] {
        var newArr = [Int]()
        for i in 0..<arr.count {
            newArr.append(arr[arr.count-1-i])
        }
        return newArr
    }
}
let testArr = myArray(arr:[1,2,3,4,5,6])

//String and Character
//iterating
var myStr = "Hello World"
for c in myStr {
    print(c)
}
//if u want the index
var myStrAsArr = Array(myStr)
for i in 0..<myStrAsArr.count where i % 2 == 0 {// even indexes only
    print(myStrAsArr[i])
}

let myUnicodeChar = "\u{1F4A9}\u{0303}"//303 is tilda
print(myUnicodeChar)

//Terminator and Separator

print(myUnicodeChar, terminator: "")
print(": coolio")

for i in 0..<nums.count {
    print(nums[i], terminator: String(myUnicodeChar))
}

print(1,4,2,5, separator: ",")
myStr.lowercased()
myStr.uppercased()
myStr.contains("ell")
let input = "filter 1,5,1,5,4,2 by > 3"
let parsedInput = input.components(separatedBy: " ")
let parsedInputArr = parsedInput[1].components(separatedBy: ",")
myStr[myStr.index(myStr.startIndex, offsetBy: 1)]

myStr.append(" Yay!")
myStr.insert("C", at: myStr.startIndex)
myStr = "My favorite place: " + myStr

// unwrapping Optionals
var myOptionalInt: Int?
myOptionalInt = nil
myOptionalInt = 5
print(myOptionalInt!)

for i in 0..<3 where i == 0 {
    guard let myInt = myOptionalInt else {
        break
    }
}
print(myOptionalInt ?? "It's nil")

myOptionalInt == 5 //dont have to unwrap to test for quality
var myOptionalArr: [Int]? = [1,3,4]
var myOptionalStr: String? = "hello"
myOptionalStr?.append("!")
let myNum = myOptionalArr?.max()?.description

var myDictionary = [String: Int]()
//let doesNotWorkDictionary = [[Int]: String]()
//cannot make dict, arr as a key
myDictionary["ben"] = 1
myDictionary.updateValue(2, forKey: "ben")//returns old value
myDictionary["ben"] = 3
//myDictionary["ben"] = nil //cannot delete in dicts so assign as nil
print(myDictionary["ben"] ?? "no value")

myDictionary["c"] = 5
myDictionary["sgsgsdg"] = 10
    myDictionary["blep"] = 4

for keyValPair in myDictionary {
    print(keyValPair.key)
    print(keyValPair.value)
}

var nums1 = [1,3,4,56,74,77,5,1,0,0]
var frequencyDict = [Int: Int]()
for num in nums1 {
    frequencyDict[num] = (frequencyDict[num] ?? 0) + 1
}
print(frequencyDict.sorted(by: {$0.value > $1.value})[0])

print(frequencyDict.reduce((0, 0)){(currentMaxTuple: (Int, Int), currentTuple: (Int, Int)) -> (Int, Int) in
    if currentTuple.1 > currentMaxTuple.1 {
        return currentTuple
    }
    return currentMaxTuple
})

print(frequencyDict.reduce((0,0)){
    $1.1 > $0.1 ? $1 : $0
})

var biggestTuple = (key: 0, value: 0)
for(currentKey, currentValue) in frequencyDict {//most readable
    if currentValue > biggestTuple.value {
        biggestTuple = (currentKey, currentValue)
    }
}



//sets remove duplicates
//sets & dictionaries dont ahve an order
//sets are good for contains

func doAThing(with arr: [Int]) -> Bool {
    return arr.count > 10
}
*/
//solving questions with functions
//1)clarify
//2) ID the func signature
//3)Diagram the problem
//4)code a solution
//5) test & refactor

//func maxAndMin(of arr:[Int] = [1,2,3,4]) -> (max: Int, min: Int)? {
//    guard arr.count > 0 else {
//        return nil
//    }
//    return(arr.max()!, arr.min()!)
//}
//
////These lines are the same, the values are not being stored anywhere
//maxAndMin(of: [1,5,2,5,2,4])!
//(5,1)
//
////closures
//var addFour: (Int) -> Int = {return $0 + 4}
//addFour(2)
//var addFourCopy = addFour
var addFive = {$0 + 5}
//addFourCopy = {$0 + 5}
//addFourCopy(2)
//
//class Bowl {
//    var color: String
//    init(color: String) {
//        self.color = color
//    }
//}
//
//let myBowl = Bowl(color: "red")
//let myBowlCopy = myBowl
//myBowlCopy.color = "green"
//myBowl.color
//
//func combine(_ a: Int, and b: Int, with combiningClosure: (Int, Int) -> Int) -> Int {
//    return combiningClosure(a,b)
//}
//combine(5, and: 9, with: {(a,b) in
//    return a + b
//})
//
////filter func
//func filter (arr: [Int], by filterClosure: (Int) -> Bool) ->
//    [Int] {
//        var finalArr = [Int]()
//        for element in arr {
//            if filterClosure(element) {
//                finalArr.append(element)
//            }
//        }
//        return finalArr
//}
//
//let a = filter(arr: [1,5,2,4,2,38,8,5], by:{$0 % 2 == 0})
//print(a)
//
//
//func add(n: Int) -> (Int) -> Int {
//    return{$0 + n}
//}
//
//let addFives = add(n: 5)
//addFives(7)
//let descending: (Int, Int) -> Bool = {$0 > $1}
////filter, sort, reduce looks at each element exactly once
//[1,5,2,4,2,38,8,5].filter{$0 > 0}
//[1,5,2,4,2,38,8,5].map{Double($0)}
//[1,5,2,4,2,38,8,5].reduce(0, +)
//[1,5,2,4,2,38,8,5].sorted(by: descending)
//
//enum Coin {
//    case penny(Int)
//    case dime(Int)
//    case nickel(Int)
//    case quarter(Int)
//}
//let myCoin: Coin = .penny(53)
//// the only way to get associated values
//switch myCoin {
//case .penny(let count):
//    print("You have \(count) pennies")
//default:
//    break
//}
//
//struct Cup {
//    static var numberOfCupsCreated = 0
//    var isFull = false
//    var color = "green"
//    var height = 10
//    init(color: String) {//once you make a custom initializer, default will not ato pop show
//        Cup.numberOfCupsCreated += 1 //type property
//        self.color = color//instance property
//    }
//   mutating func fillCup(){
//        self.isFull = true
//
//    }
//}
//
////let myCup = Cup(isFull: true, color: "red", height: 5)
//let myCup = Cup(color: "blue")
//let myCup2 = Cup(color: "orange")
//Cup.numberOfCupsCreated
//
////Classes are reference types and has inheritance
////class , we always have to write initializer it deosnt get default initializers
//
//class Person {
//    var name: String
//    var age: Int
//    init(name: String, age: Int){
//    self.name = name
//    self.age = age
//    }
//}
//
//class Actor: Person {
//    var breakoutRole: String
//    init(name: String, age: Int, breakoutRole: String) {
//        self.breakoutRole = breakoutRole
//        super.init(name:name, age: age)
//    }
//    convenience init(name: String, breakoutRole: String) {
//        self.init(name: name, age: 0, breakoutRole: breakoutRole)
//    }
//}
//
//let kilmer = Actor(name: "Kilmer", breakoutRole: "The Saint")

//get enum notes from bens notes on slack

//closures
let addClosure = {(num1: Int, num2: Int) -> Int in
    return num1 + num2
}
addClosure(5, 2)

let addClosure2:(Int, Int) -> Int = {(a,b) in
    let result = a + b
    return result
}
addClosure2(2, 2)

func addMaker(n: Int) -> (Int) -> Int {
    let addingClosure = {(a: Int) -> Int in
        return a + n
    }
    return addingClosure
}

let addFives = addMaker(n: 5)
addFives(8)
let addTwo = addMaker(n: 2)
addTwo(5)


enum HigherOrderFunction {
    case map((Int) -> Int)
    case filter((Int) -> Bool)
    case sort((Int, Int) -> Bool)
    case reduce((Int, Int) -> Int)
}

let myMap = HigherOrderFunction.map({$0 * 2})
let pi = Double.pi
//final you can't override it
//static is a type property

switch myMap {
case .map(let closure):
    print([1,2,3,4].map(closure))
default:
    break
}

class Point {
    var x: Int
    var y: Int
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    convenience init() {
        self.init(x: 0, y: 0)
    }
}
class ThreeDPoint: Point{
    var z: Int
    init(x: Int, y: Int, z: Int) {
        self.z = z
        super.init(x: x, y: y)
    }
    override init(x: Int, y: Int) {
        self.z = 0
        super.init(x: x, y: y)
    }
}

let pointOne = Point(x: 5, y: 8)
let originPoint = Point()
(originPoint.x, originPoint.y)

//review enum notes









