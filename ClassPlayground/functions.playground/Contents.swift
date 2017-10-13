//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
func myFirstFunction () {
    print("hello world")
}
myFirstFunction()

func doubleANumber(number x: Int) -> Int {
    let doubleNumber = x * 2
    return doubleNumber
}
//s csll to a function IS what it returns
let firstDoubledNum = doubleANumber(number: 4)
let secondDoubledNum = doubleANumber(number: 8)

//parameter naming
func functionName(externalName internalName: Int){
    print(internalName)
}
functionName(externalName: 4)


func plus2Times3(num x: Int) -> Int {
    let plus2Times3 = (x + 2) * 3
    return plus2Times3//output
}
//return transforms function into what it returns
plus2Times3(num: 2)

func avg3(num1 x: Int, num2 y: Int, num3 z: Int) -> Int {
    let  avg3 = (x + y + z) / 3
    return avg3
}
avg3(num1:1, num2:2, num3:3)

func exclaim(add x: String) -> String {
   return x + "!"
}
exclaim(add: "jelly")

let firstTest = 70
let secondTest = 85
let thirdTest = 50
let average = avg3(num1: firstTest, num2:secondTest, num3: thirdTest)

func myFunction3(){
    print("empty tuple or void type w no return ")
}


//function signature (Int, Int) -> Int?
func divide(_ dividend:Int, by divisor: Int) -> Int? {
    if divisor != 0{
        return dividend / divisor
    }
    return nil//return is like break for functions
}

divide(8, by: 2)
divide(0, by: 2)
divide(54, by: 0)

func inversedCoordinatesOf(x: Int, y:Int) -> (x: Int, y: Int) { //expecting tuple end result
   return (-x, -y)
}

inversedCoordinatesOf(x: 2, y: 3)

func excitedPrint(str: String, terminator: String = "\n") {
    print(str + "!", terminator: terminator)//1st terminator is external name, 2nd terminator is a var
}

//Multiple Returns
//func inversedCoordinatesOf(x: Int, y: Int) -> (x: Int, y: Int) {
//    return (-x, -y)
//}

inversedCoordinatesOf(x: 3, y: 5)



var myString2: String? = "hi"

if let myString2 = myString2 {
    print(myString2)
}

print("a", "b", "c", separator: " ", terminator: "\n")
print("a", "b", "c")



excitedPrint(str: "Hi")
excitedPrint(str: "Hi", terminator: "ENDLINE")

//Variadic Parameters
func average(of arr: [Int]) -> Int {
    var sum = 0
    for element in arr {
        sum += element
    }
    return sum / arr.count
}

average(of: [4,7,1,8])

//let myArr: [Any] = ["a", 4, 9.3, false]

func average2(of arr: Int...) -> Int {
    var sum = 0
    for element in arr {
        sum += element
    }
    return sum / arr.count
}

average2(of: 4,7,1,8)

func doStuff0(myInt: Int?, myString: String?, myDouble: Double?) {
    if let int = myInt {
        if let str = myString {
            if let double = myDouble {
                print(int, str, double)
                //More code here
            }
        }
    }
}

func doStuff(myInt: Int?, myString: String?, myDouble: Double?) {
    guard let myInt = myInt else {
        return
    }
    guard let myString = myString else {
        return
    }
    guard let myDouble = myDouble else {
        return
    }
    let newVal = Int(myDouble) + myInt
    print("\(myString): \(newVal)")
}

doStuff(myInt: 5, myString: "Answer", myDouble: nil)

func doStuff1(myInt: Int?, myString: String?, myDouble: Double?) {
    guard let myInt = myInt, let myString = myString, let myDouble = myDouble else {
        return
    }
    let newVal = Int(myDouble) + myInt
    print("\(myString): \(newVal)")
}

//Find the max value of an array of Ints

func max(arr: [Int]) -> Int? {
    guard !arr.isEmpty else {
        return nil
    }
    var currentMax = arr[0]
    for value in arr where value > currentMax {
        currentMax = value
    }
    return currentMax
}

max(arr: [])


var max = 10
var min = -45

swap(&max, &min)


func excite2(str: inout String) {
    str.append("!")
}

var testStr = "hi"
excite2(str: &testStr)
testStr


// global Scope
let i = 2
func iScopeMadness() {
    // function scope
    let i = 3
    do {
        // arbitrary block scope
        let i = 5
        if true {
            // if block scope
            let i = 7
            // for scope (generate odds in range)
            for i in 11...13 where i % 2 == 1 {
                print(i)
            }
            print(i)
        }
        print(i)
    }
    print(i)
}
iScopeMadness()
print(i)









