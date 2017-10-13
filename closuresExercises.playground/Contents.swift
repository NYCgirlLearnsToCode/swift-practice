//: Playground - noun: a place where people can play

import UIKit
//
//Write a function named applyKTimes that takes an integer K and a closure and calls the closure K times. The closure will not take any parameters and will not have a return value.


//func applyKTimes(_ K: Int, _ closure: () -> ()){
//
//}
//


//Use filter to create an array called multiples that contains all the multiples of 3 from numbers and then print it.

//let numbers = [1, 2, 3, 4, 6, 8, 9, 3, 12, 11]
//let myArr = numbers.filter{$0 % 3 == 0}
//print(myArr)

//Find the largest number from numbers and then print it. Use reduce to solve this exercise.
//
//Example
//Input:

//let numbers = [4, 7, 1, 9, 6, 5, 6, 9]
//
//print(numbers.reduce(numbers[0],{(a,b) -> Int in if a > b {return a} else {return b}}))
//Join all the strings from strings into one using reduce. Add spaces in between strings. Print your result.
//
//Example
//Input:

//let strings = ["We", "Heart", "Swift"]
//
//
//print(strings.reduce(""){$0 + " " + $1 })

//let cities = ["Shanghai", "Beijing", "Delhi", "Lagos", "Tianjin", "Karachi", "Karachi", "Tokyo", "Guangzhou", "Mumbai", "Moscow", "São Paulo"]
//
//
//
////a. Use sortedBy to sort cities in alphabetical order.
//print(cities.sorted(by: <))
////b.Use sortedBy to sort cities alphabetical order of the second character of the city name.
//cities.sorted(by: <#T##(String, String) throws -> Bool#>)
////c.Use sortedBy to sort cities in order of the length of the city name.
//
//print(cities.sorted{(a,b) -> Bool in
//    if a[a.index(a.startIndex, offsetBy: 1)] < b[b.index(b.startIndex, offsetBy: 1)] {
//        return true
//    } else {
//        return false
//    }
//})

let citiesWithPopulation: [(String, Int)] = [("Shanghai", 24256800), ("Beijing", 21516000), ("Delhi", 16787941), ("Lagos", 16060303), ("Tianjin", 15200000), ("Karachi", 14910352), ("Karachi", 14160467), ("Tokyo", 13513734), ("Guangzhou", 13080500), ("Mumbai", 12442373), ("Moscow", 12380664), ("São Paulo", 12038175)]


//
//a. Use sortedBy to sort citiesWithPopulation in ascending order of population.
print(citiesWithPopulation.sorted{$0.1 < $1.1})
//b. Use sortedBy to sort citiesWithPopulation in reverse alphabetical order of the last character in the city name.
print(citiesWithPopulation.sorted(by: {$0.0[$0.0.index($0.0.endIndex, offsetBy:-1)] > $1.0[$1.0.index($1.0.endIndex, offsetBy:-1)]}))

//Sort numbers in ascending order by the number of divisors. If two numbers have the same number of divisors the order in which they appear in the sorted array does not matter.

//var numbers = [1, 2, 3, 4, 5, 6]
//
//func numberOfDivisors()


let numbersArr = [4, 7, 1, 9, 6, 5, 6, 9]
//Find the largest number from numbers and then print it. Use reduce to solve this exercise.
print(numbersArr.reduce(0){
    if $0 > $1 {
    return $0
}else{
    return $1
}})
