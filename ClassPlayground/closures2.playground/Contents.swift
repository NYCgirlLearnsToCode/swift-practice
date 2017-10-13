//: Playground - noun: a place where people can play

import UIKit

var str = "Hel,lo, playgroun,d"
var myDictionary = ["Adam": 9, "Ben": 4, "Carla":2]
//Higher ordered functions work with any collection type
//Filter takes a closure and returns a bool
//anything u can iterate over, u can filter
let filteredStr = str.filter({(currentChar: Character) -> Bool in
    return currentChar != ","
})
//shortened
//$0 is the current thing you are iterating over
let filteredStr2 = str.filter{$0 != ","}
print(filteredStr2)
let filteredDictionary = myDictionary.filter{$0.key.count < 4}
print(filteredDictionary)
//Map - transforms element from 1 collection to another, mapped to either array or dictionary
//-in dictionary can map & can just modify just dict values/dict keys
let capitalizedVowels = String(str.map({(currentChar: Character) -> Character in
    if "aeiou".contains(currentChar) {
        return Character(currentChar.description.capitalized)
    }else{
        return currentChar
    }
}))
//let capitalizedVowels2 = String(str.map{"aeiou".contains(currentChar)})
print(capitalizedVowels)
//print(capitalizedVowels2)
//Reduce
//$0 in reduce is the accumulation of everything you have so far
//$1 is the current thing in the collection you are iterating over

let greatestChar = str.reduce(str.first ?? " "){$1 > $0 ? $1 : $0}
print(greatestChar)

let nums = [5,3,7,8,1,4]
nums.reduce(nums.first ?? -1){(largestIntSoFar: Int, currentInt: Int) -> Int in
    if currentInt > largestIntSoFar {
        return currentInt
    }else {
        print("turns out that \(currentInt) isn't bigger than \(largestIntSoFar)")
        return largestIntSoFar
    }
}

var sum = 0
for num in nums {
    sum += num
}

print(sum)

//Sort is like reduce except it looks at 2 things at a time
str.sorted()
print(str.sorted(){$0 > $1})//sorted by reverse abc order
//when you sort a dictionary, it's an array of tuples
print(myDictionary.sorted(by: {$0.key < $1.key}))
print(myDictionary.reduce(0, {$0 + $1.value}))
print(myDictionary.reduce("", {$1.key + " "}))
print(myDictionary.reduce(""){
    $0 + $1.key
})

var doubler = { (a: Int) -> Int in
    return a * 2
}
print(doubler(22))
doubler(5)

func makeDoubler() -> (Int) -> Int {
    return {$0 * 2}
    }
let myDoubler = makeDoubler()
let doubledNum = myDoubler(4)
print(makeDoubler()(5))
//created a func with an empty closure
//take a function & returns a closure inside function
//closures are just a type, works like other types

func makeMultiplier(factor: Int) -> (Int) -> (Int) {
    return {(userInputRecievedLater: Int) -> Int in
        return userInputRecievedLater * factor
    }

}
let newDoubler = makeMultiplier(factor: 2)
let myTripler = makeMultiplier(factor: 3)
newDoubler(7)
myTripler(4)

let sevenTimes = makeMultiplier(factor: 7)
sevenTimes(9)

myTripler(6)
var factor = 8

let octupler = {(n) in
    return factor * n
}
factor = 2
octupler(10)
//Write a function that takes two parameters, a prefix string and a suffix string and returns a function that takes one parameter, a string. The returned function should wrap the string in its argument with the prefix and suffix strings provided when the function was created by the "factory" function.

func stringMaker(prefix: String, suffix: String) -> (String) -> String {
    return {(userInput: String) in
        return prefix + userInput + suffix
    }
}
//caputring/closing over a value

//let fancyNameMaker = stringMaker(prefix: "Mr. ", suffix: "Esq")
//let myFancyName = fancyNameMaker("Ben")
//print(myFancyName)

func makeIncrementer(for amount: Int) -> () -> Int {
    var runningTotal = 0
    func makeIncrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return makeIncrementer
}
let fiveCounter = makeIncrementer(for: 5)
fiveCounter()
fiveCounter()
//running total is saved each time & amount of 5 is added each time to running total
//runningtotal value is captured and stored in the closure everytime runningtotal is referenced

let oneCounter = makeIncrementer(for: 1)
oneCounter()
oneCounter()

//Pass by value
var myArr = [1,2,3]
var myArrCopy = myArr
myArr = [4,5,6]
print(myArr)

//Pass by reference, value is updated
//Closures are passed by reference
let incByOne = makeIncrementer(for :1)
incByOne()
incByOne()
let incByOneCopy = incByOne //The same running total for both
incByOneCopy()
incByOne()


//Write a function that takes two parameters, a prefix string and a suffix string and returns a function that takes one parameter, a string. The returned function should wrap the string in its argument with the prefix and suffix strings provided when the function was created by the "factory" function.

func fancyNameMaker(prefix:String, suffix:String) -> (String) -> String {
    return {(name: String) in
        return prefix + name + suffix

    }
    
}

let fancyName = fancyNameMaker(prefix: "Mr",suffix: "Stone")
let myFancyName = fancyName("Ben")

//What will print
var numberArray = [5, 2, 1]
var a = numberArray.map{$0 * 2}
print(a)
var b = a.reduce(a[0] * 2, -)
print(b)






























