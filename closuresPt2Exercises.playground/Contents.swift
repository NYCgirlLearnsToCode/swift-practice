//: Playground - noun: a place where people can play

import UIKit

//Use filter to create an array called multiples that contains all the multiples of 3 from numbers and then print it.

//let numbers = [1, 2, 3, 4, 6, 8, 9, 3, 12, 11]
//var multiples = numbers.filter{$0 % 3 == 0}
//print(multiples)

//Implement a function combineArrays that takes 2 arrays and a closure that combines 2 Ints into a single Int. The function combines the two arrays into a single array using the provided closure.
//Assume that the 2 arrays have equal length.

//Example
//Function input:
//
//var array1 = [1,2,3,4]
//var array2 = [5,5,5,3]
//combineArrays(array1,array2) {
//    $0 * $1
//}
//var array1 = [1,2,3,4]
//var array2 = [5,5,5,3]
//let closure5 = {(a: Int, b: Int) -> Int in
//    return a * b
//}
//func combineArrays(arr1: [Int], arr2: [Int], closure:(Int, Int) -> Int ) -> [Int]{
//    var result: [Int] = []
//    for i in 0...arr1.count-1 {
//        result.append(closure(arr1[i], arr2[i]))
//    }
//    // print(result)
//    return result
//}
//print(combineArrays(arr1: array1, arr2: array2, closure: closure5 ))
//a. Write a function called intsToStrings that takes an array of Ints and a closure as parameters and returns an array of Strings. The closure should take an Int and return a String. The function should apply the closure to the ints in the array.

let theInts = [1, 2, 3, 44, 555, 6600, 10763]
let closureIntToString = {(num: Int) -> String in
    return String(num)
}
func intsToStrings(arrOfInt: [Int], closure: (Int) -> String) -> [String] {
    var result: [String] = []
    for i in 0..<arrOfInt.count {
        result.append(closure(arrOfInt[i]))
    }
    return result
}
intsToStrings(arrOfInt: theInts, closure: closureIntToString)

//b. Define a closure assigned to a constant called asString that just turns an Int to a String and pass it to intsToStrings

//c. Define a closure assigned to a constant called evenOdd that returns "odd" or "even" if the Int is odd or even and pass it to intsToStrings
let asString = {(num :Int) -> String in
    if num % 2 == 0 {
        return "even"
    }
    return "odd"
}

print(intsToStrings(arrOfInt: theInts, closure: asString))

//d. Define a closure assigned to a constant called englishWords that returns the written english word of each digit in an Int, 234 -> "two three four", and pass it to intsToStrings

let str1 = closureIntToString
let englishWords = {(num: Int) -> String in
    let arrOfNum = Array(String(num))
    var str = ""
    for char in arrOfNum {
        switch char {
        case "0":
            str += "zero "
        case "1":
            str += "one "
        case "2":
            str += "two "
        case "3":
            str += "three "
        case "4":
            str += "four "
        case "5":
            str += "five "
        case "6":
            str += "six "
        case "7":
            str += "seven "
        case "8":
            str += "eight "
        case "9":
            str += "nine "
        default:
            str += " "
        }
    }
    return String(Array(str))
    
}
print(intsToStrings(arrOfInt: theInts, closure: englishWords))

let myArray = [34,42,42,1,3,4,3,2,49]


//Sort myArray in ascending order by defining the constant ascendingOrder below.
//let ascendingOrder:(Int, Int) -> Bool = {$0 < $1}
//
//
//let mySortedArray = myArray.sorted(ascendingOrder)


//q3






