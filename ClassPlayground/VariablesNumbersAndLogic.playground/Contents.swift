//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var num = 8 //Int
var numCanBeZero = 0
var numCanBeNegative = -1

//Double
var myDouble = 4.2


var num2 = 4

//Bool (Short for boolean)
var myBool = true
var myOtherBool = false


var str2 = "hello 2"

//Int

var myInt = 4
//Double

var myDouble2 = 2.2
//Bool

var myBool2 = false

//String
var myString2 = "Turnt Tuesdays"


//Type annotation
var myCharacter: Character = "y"

var numberOfStudents: Int

//Assigning a variable (Initialize a variable)
numberOfStudents = 35
var pi: Double = 3.14159
pi = 3
print(pi)

//Define constants that make sense as constants and not variables
let speedOfLight = 2.9 * pow(10.0, 8.0)
let numberOfDoors = 4


//Bools in detail

let numberOfPeople = 30
let numberOfChairs = 15

let enoughChairsForEveryone = numberOfChairs > numberOfPeople

var a = 6
var b = 6
var c = 7

a > b
a < b
a = b
a == b
a != b

(a == b) && numberOfPeople < numberOfChairs
a < b && b < c

//Combine Bools with AND (BOTH must be true)
true && true
false && true


//Combine bools with OR ||, at least 1 must be true

true || true
true || false
false || false

4 != 5
!true
!false

//Number Domains

//Whole Numbers 90 , 2, 3, .. inf)

//Intergers (-inf ...-3, -2, -1, 0, 1, 2, 3... inf)
//Rationals (Any number that can be made into a fraction)
// 1/2, 1/3, -3/4

//Real Numbers (can't be made into a fraction)
//pi, e + everything above


10 + 3
10 - 3
10 * 3
let quotient = 10 / 3
let remainder = 10 % 3

let numberOfPeople2 = 30
let numberPerGroup2 = 4

let totalGroups = numberOfPeople2 / numberPerGroup2
let peopleLeftOver = numberOfPeople2 % numberPerGroup2

//Can check even or odd by modding 2
5 % 2
10 % 2
-13 % 2
18 % 2


//Check if number % something == 0 for divisibility
let sixIsFactorOfEighteen = 18 % 6 == 0

//Get the last digit of a number by modding by 10
let lastDigit = 23498 % 10
//get last 2 digits mod by 100
let lastTwoDigits = 23498 % 100
//mod only works for Int



//Shorthand
var i = 10
i += 1 // Equiv to i = i + 1
//var i = is assigning i + 2
print(i)

let d1 = 1.1
let d2 = 1.1

if d1 == d2 {
    print("d1 and d2 are equal")
}

print("d1 + 0.1 is \(d1 + 0.1)")

if d1 + 0.1 == 1.2 {
    print("hello, out there.")
} else {
    print("d1 + 0.1 is not 1.2")
}


let firstNum = 4
let secondNum = 8.4

//converting 1 things to another
Double(firstNum) + secondNum
firstNum + Int(secondNum)

4/3.0

let doubleNum: Float = 4.4



