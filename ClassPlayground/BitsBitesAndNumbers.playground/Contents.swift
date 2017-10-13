//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//Int
//String
//Floats
//Bool
//Double
//Character

let a: Float = 34.5
let b: Double = 24.5
let c: Int = 32

let myDecimalNumber = 21
let myBinaryNumber = 0b10101
let myHexNumber = 0x15

myDecimalNumber == myBinaryNumber
String(257, radix :2)

128 * 2

var myEightBitInt: Int8 = 38
Int8.max
Int8.min
Int16.max
Int32.max
Int64.max
let randomNum = arc4random()

//Compile time error
arc4random_uniform(UInt32(myDecimalNumber))



myEightBitInt = -4
myEightBitInt = Int8.max

//Runtime error
var mySixteenBitInt =  Int16(myEightBitInt) + 1

//myEightbitInt += 1
16*16
15*16



