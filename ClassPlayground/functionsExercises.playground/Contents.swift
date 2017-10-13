//: Playground - noun: a place where people can play

import UIKit


//Complete the function so that it will print out total cost after tax. Make sure to call the function afterwards.
//Then, modify the function you implemented to have a return type of Int, and use an external name that looks more readable. Function calls should look something like "total cost of the item after tax"

//let itemCost = 45.0
//let nyTax = 0.08775
//
//func totalCostOfTheItemAfterTax(itemCost x: Double, nyTax y: Double) -> Int {
//    let percentageOfTax = x * y
//
//    return Int(percentageOfTax + x)
//}
//totalCostOfTheItemAfterTax(itemCost: 1.0, nyTax: 2.0)


let todaysTemperature = 72
func todaysTemp(temp x: Int) -> String{
    if x <= 40 {
        return ("It's cold out.")
    } else if x >= 85 {
        return ("It's really warm.")
    } else {
        return ("Weather is moderate.")
    }
    
    
}
print(todaysTemp(temp :60))


//Write a function named min2 that takes two Int values, a and b, and returns the smallest one.

func min2(a: Int, b: Int) -> Int {
    //    if a < b {
    //        return a
    //    }else{
    //        return b
    //    }
    return a < b ? a : b
}
min2(a: 7, b: 3)

//Write a function that takes an Int and returns it’s last digit. Name the function lastDigit. Use _ to ignore the external parameter name.

//Function Definition
func lastDigit(_ number: Int) -> Int {
    return number % 10
}
lastDigit(12)

//Write a function that takes in any two positive integers and return the sum
func sumOf(_ x: UInt,_ y:UInt) -> UInt {
    return x + y
}
sumOf(4, 2)

//Write a function takes in any number grade and returns a corresponding letter grade.
//
//Number Grade    Equivalent Letter Grade
//100    A+
//90 - 99    A
//80 - 89    B
//70 - 79    C
//65 - 69    D
//Below 65    F

func numToLetter(_ x:Int) -> String {
    switch x {
    case 100:
        return "A+"
    case 90 - 99:
        return "A"
    case 80 - 89:
        return "B"
    case 70 - 79:
        return "C"
    case 65 - 69:
        return "D"
    default:
        return "F"

    }
}
numToLetter(100)


//Make a calculator function that takes in three parameters (two numbers and one operator) and returns the answer of the operation.
//
//Operater parameter: (+, -, x, /)


func calculator(_ x: Int, operatorInQuotes y: Character, _ z: Int) -> Int? {
    switch y{
    case "+":
      return  x + z
    case "-":
       return x - z
    case "*":
       return x * z
    case "/":
        return x / z
    default:
        return nil
    }
}
calculator(1, operatorInQuotes: "+", 3)


//Write a function so that it will print out total cost after tip.
let mealCost = 45
let tipPercentage = 0.15

//Write your code below
func totalWithTip(mealCost x: Double, tipPercentage y: Double) -> Double {
    let percentageOfTip = x * y
    
    return percentageOfTip + x
}



let myFinalCost = totalWithTip(mealCost: Double(mealCost), tipPercentage: tipPercentage) //Fill in the arguments
print(myFinalCost)

//Write a function that will print out total cost after tip and tax
let taxPercentage = 0.09

//Write your code below
func totalTipAndTax(totalWithTip x: Double, tax y: Double) -> Double {
 
    return x + (x * y)
}



let myFinalCostWithTipAndTax = totalTipAndTax(totalWithTip: myFinalCost, tax: taxPercentage) //Fill in the arguments

//Implement a function named repeatPrint that takes a string message and a integer count as parameters. The function should print the message count times and then print a newline.


func repeatPrint(Msg x: String,Count y: Int) -> String {
//    let count = y
    for _ in 0..<y{
        print(x, terminator: "")
    }
    print()
    return ""
}
repeatPrint(Msg: "Hi", Count: 3)


//Write a function named first that takes an Int named n and returns an array with the first n numbers starting from 1.
//var firstNums: [Int]
func first(_ n: Int) -> [Int] {
    var firstNums = [Int]()
    for num in 1...n {
        firstNums.append(num)
    }
return firstNums
}
first(5)

//Write a function that prints the numbers from 1 to x, except:
//
//If the number if a multiple of 3, print "Fizz" instead of the number
//If the number is a multiple of 5, print "Buzz" instead of the number
//If the number is a multiple of 3 AND 5, print "FizzBuzz" instead of the number
//Your function should take in one parameter: x (the number to count up to)



func fizzBuzz(_ x: Int) {
    for num in 1...x{
        switch num {
        case _ where num % 15 == 0:
            print("FizzBuzz")
        case _ where num % 3 == 0:
            print("Fizz")
        case _ where num % 5 == 0:
            print("Buzz")
        default:
            print(num)
        }
    }
}
fizzBuzz(100)

//Write a function named reverse that takes an array of integers named numbers as a parameter. The function should return an array with the numbers from numbers in reverse order.

func reverse(numbers arr: [Int]) -> [Int]{
    var arrInts = [Int]()
    for index in 0..<arr.count {
       arrInts.append(arr[(arr.count-1) - index])
      
    }
    return arrInts
    
}
reverse(numbers: [5,4,2])




