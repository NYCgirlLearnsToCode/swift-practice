//: Playground - noun: a place where people can play

import UIKit

//can't compare tuples
//can compare string but it only compares the first letter
"a" > "A"

//let myTuple = (count: 1,2,text:"hi")
//print(myTuple.count)
//print(myTuple.1)
//switch myTuple {
//case(_, 2, _):
//    print("there's a 2")
//        default:
//    break
//}
//longest string
//var str = "then"
//let myArr = ["hi"," wow", "jelly"]
//var replaced = str.replacingOccurrences(of: "then", with: "oh")
//print(replaced)
//
//let myInt2 = "110101"
//var sum = 0.0
//for(power, currentChar) in myInt2.reversed().enumerated() {
//    sum = sum + (Double(String(currentChar))! * pow(2.0, Double(power)))
//
//}
//sum
//let myIntAsBin = Int(myInt2, radix: 2)
//
//let myStr = "this is a string"
//let myArr4 = myStr.components(separatedBy: " ")
//myArr4.joined(separator: " ")


// 1 1 2 3 5 8 13 21
//var numOne = 1
//var numTwo = 1
//var currentSum = numOne + numTwo
////print(numOne)
////print(numTwo)
//for _ in 0..<10 {
//    print(currentSum)
//    numOne = numTwo
//    numTwo = currentSum
//    currentSum = numOne + numTwo
//}
var numOne = 1
var numTwo = 1
var currentSum = numOne + numTwo
print(numOne)
print(numTwo)
for _ in 0..<20 {
    print(currentSum)
    numOne = numTwo
    numTwo = currentSum
    currentSum = numOne + numTwo
}


//let myInt = 0b110101
//let binStr = String(myInt, radix: 2)
//
//let myInt2 = "110101"
//var sum = 0.0
//for (power, currentChar) in myInt2.reversed().enumerated() {
//    sum += (Double(String(currentChar))! * pow(2.0, Double(power)))
//}
//print(sum)
//print fibonacci #s 1, 2, 3, 5, 8, 13 -> 13 is the sum of 5 and 8, 8 is the sum of 3 and 5.)



//let woodchuck: String? = "woodchuck"
//print("vgvj\(woodchuck)")

//Print an Int in a social security number format. Try this using operators.
//Output:
//
//"107-30-7721"

Int.max

let h = Character("h")
let e = Character("e")
let l1 = Character("l")
let l2 = Character("l")
let o = Character("o")
let arr = [h, e, l1, l2, o]

var str = ""
var str2 = ""

// Using for loop with sequence
for char in arr {
    str.append(char)
}
for _ in 0..<3 {
    str2.append(str)
}
print(str2)
str2.count

var number = 107307721
let front = number / 1000000
let middle = number % 1000000 / 10000
let back = number % 100000
print(front, middle, back, separator: "-")
