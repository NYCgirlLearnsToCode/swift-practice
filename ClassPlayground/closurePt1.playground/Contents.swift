//: Playground - noun: a place where people can play

import UIKit

func add0(_ numOne: Int, _ numTwo: Int) -> Int {
    return numOne + numTwo
}

//use closures for a 1 shot process (why theres no value names)

//Addition
let add = {(numOne: Int, numTwo: Int) -> Int in
    return numOne + numTwo
}
print(add)
//can also be put in an array, closure is a type like Int , can use closure type liek any other type
let add1: (Int, Int) -> Int = {(a, b) in// can type annotate as closure
    return a + b
}
let myArr = [add]
add(4, 9)// no value names

//Subtract
let subtract = {(a: Int, b: Int) -> Int in
    return a - b
}
subtract(9,5)
//Multiply
let multiply = {(numOne: Int, numTwo: Int) -> Int in
    return numOne * numTwo
}
//Divide
let divide: (Double, Double) -> Double? = {(a,b) in
    if b == 0 {return nil}
    return a / b
    
}



let operations = [add, subtract, multiply, divide] as [Any]

func combine(_ x:Int, and y:Int, with operation: (Int, Int) -> Int = {$0 + $1}) -> Int {
    let result = operation(x,y)
    return result
}
combine(5, and: 3, with: multiply)

let mod = {(a: Int, b: Int) -> Int in
    return a % b
}
combine(5, and: 3, with: mod)

combine(10, and: 3, with: {(a,b) -> Int in// its know a & b is an Int bc already initialized prev
    return a % b
})
combine(10, and: 3, with: {(a,b) in return a % b})

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
//Array((names.sorted()).reversed())
let forwards: (String, String) -> Bool = {(a,b) in
    let isAlreadyInOrder = a < b
    return isAlreadyInOrder
}
names.sorted(by: forwards)

let backwards: (String, String) -> Bool = {(a,b) in
    let isAlreadyInOrder = a > b
    return isAlreadyInOrder
}
names.sorted(by: backwards)
//Trailing closure syntax
names.sorted{$0 > $1}
names.sorted(by: >)// same as above

let numbers = [32, 21, 33, 2, 66, 88, 43, 902, 73, 27, 905]
let words = ["One", "two", "Buckle", "my", "shoe"]
//Sort numbers ascending.
numbers.sorted()//default is ascending
let ascendingEvenFirst = {(a: Int, b: Int) -> Bool in//???
    let aIsOdd = a % 2 == 1
    let bIsOdd = b % 2 == 1
    if aIsOdd && !bIsOdd {
        return false
    }
    if !aIsOdd && bIsOdd {
        return true
    }
    return a < b
}

numbers.sorted(by: ascendingEvenFirst)
//Sort words, descending case-insensitive.
let descendingCaseInsensitive = {(a: String, b: String) -> Bool in
    let isAlreadySorted = a.lowercased() > b.lowercased()
    return isAlreadySorted
}
numbers.sorted()
words.sorted(by: descendingCaseInsensitive)
words.sorted{$0.lowercased() > $1.lowercased()}

words.sorted{$0.count < $1.count}
//Sort words by the length of each element.
//let length: (String)
//words.sorted(by:)
//Sort numbers ascending, even numbers first, odd numbers second. Output will be [2, 32, 66, 88, 902, 21, 27, 33, 43, 73, 905].

//filter all the even

//Map transforms the values from one array into a new array
//The transformation is according to a closure

//flatmap deals with optionals


//reduce turning an array into a single element
//reduce takes a starting val & way of ccombining the current accumulated value and the new thing in the array
//most common use in reduce is finding the sum of all the values in an array
//reduce looks at everything exactly once
//numbers.reduce(<#T##initialResult: Result##Result#>, <#T##nextPartialResult: (Result, Int) throws -> Result##(Result, Int) throws -> Result#>)

//sum = numbers.reduce(0, +) same as line 123
//sum = numbers.reduce(0){$0 + $1}//0 is the starting value not the index
//0+2= 2+3,= 5+5


//.forEach looks through everything whereas map & reduce is more limited
//reduce gives u 1 thing

//Filter
let nums = [2,3,5,1,-8]
print(nums.filter {$0 % 2 == 0})
//Map
print(nums.map{Double($0) / 2.0})
//Reduce
print(nums.reduce(true){$0 || $1 == 5})
print(nums.reduce(""){$0 + String($1)})
//print("Hello World".filter(String($0) == String($0))




