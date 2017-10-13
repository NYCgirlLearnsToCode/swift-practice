//: Playground - noun: a place where people can play

import UIKit

var code = [
    "a" : "b",
    "b" : "c",
    "c" : "d",
    "d" : "e",
    "e" : "f",
    "f" : "g",
    "g" : "h",
    "h" : "i",
    "i" : "j",
    "j" : "k",
    "k" : "l",
    "l" : "m",
    "m" : "n",
    "n" : "o",
    "o" : "p",
    "p" : "q",
    "q" : "r",
    "r" : "s",
    "s" : "t",
    "t" : "u",
    "u" : "v",
    "v" : "w",
    "w" : "x",
    "x" : "y",
    "y" : "z",
    "z" : "a"
]
var codeArr = [Character](code)
var message = "hello world"
print(codeArr)
//for uncode in message {
//    if uncode == Character(code.keys) {
//        print(uncode)
//    }else{print("n/a")
//    }
//}

var numbers = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]
//You are given an array of integers. The frequency of a number is the number of times it appears in the array. Find out the frequency of each one.
//Print the numbers in ascending order followed by their frequency.

var frequencyDictionary = [Int:Int]()
for number in numbers {
    if frequencyDictionary[number] != nil {
        frequencyDictionary[number] = frequencyDictionary[number]! + 1
        //same as ^ freqfrequencyDictionary[number]! += 1
    }else {
        frequencyDictionary[number] = 1
    }
}
for number in numbers {
    frequencyDictionary[number] = (frequencyDictionary[number] ?? 0) + 1
}
print(frequencyDictionary)

//Print the most common letter in the string below:

var myString = "We're flooding people with information. We need to feed it through a processor. A human must turn information into intelligence or knowledge. We've tended to forget that no computer will ever ask a new question."


var frequencyDictionary1 = [Character : Int]()
for c in myString {
    frequencyDictionary1[c] = (frequencyDictionary1[c] ?? 0) + 1
}
var mostFrequent: (character: Character, count: Int)? = nil








