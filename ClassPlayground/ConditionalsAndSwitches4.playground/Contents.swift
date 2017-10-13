//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var population: Int = 5422
var message: String
var hasPostOffice:Bool = true
//if population < 10000 {
//    message = population < 10000 ? "\(population) is a small town"
//}else{
//    message = "\(population) is pretty big"
//}
//
//message = population < 10000 ? "\(population) is a small town!" :
//
//"\(population) is pretty big!"

let primate = "Ape"
let equid = "Zebra"
let cold = 32
let ideal = 75
let hot = 90
let currentTemp = 75

currentTemp == ideal
cold < hot
hot >= currentTemp

//primate > equid
//"Ape" > "Zebra"
//when comparing strings, swift looks at first letter,compares alphabetically, lowercase letters are smallest
"a" > "A"
//currentTemp < hot && currentTemp > cold
// 65 < 90 && 65 > 32
// true && true
// true
let tempIsIdeal = currentTemp >= ideal - 5 && currentTemp <= ideal + 5

var temperatureInFahrenheit = 80
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
}else {
    print("it's not very cold")
}
var weatherMessage = tempIsIdeal ?("It's nice out") :("it's not that nice out")


temperatureInFahrenheit = 50
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit >= 86 {
    print("It's really warm. Don't forget to wear sunscreen.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}

var ownsSweater = true
if temperatureInFahrenheit < 60 {
    if ownsSweater {
        print("Put on your sweater!")
    } else {
        print("You should get a sweater!")
    }
} else if temperatureInFahrenheit > 80 {
    if ownsSweater {
        print("Make sure not to wear your sweater!")
    } else {
        print("No need to buy a sweater")
    }
} else {
    print("If you have a sweater, up to you what to do with it.")
}

if currentTemp > hot || currentTemp < cold {
    print("Todays current temp of \(currentTemp) is rather extreme folks! Dress accordingly")
} else {
    print("Todays current temp of \(currentTemp) is not that bad! Enjoy the day folks.")
}

if currentTemp > hot || currentTemp < cold {
    print("2nd condition works")
}

currentTemp <= ideal + 5 && currentTemp >= ideal - 5 ? print("perfect weather") : print("non-ideal weather")


let meal = "dinner"

switch meal {
case "breakfast":
    print("enjpy your breakfast")
case "dinner":
    print("have a nice dinner")
default:
    print("whatever meal you're having, hope it's good")
}

let strikes = -234567
switch strikes {
case 0:
    print("Up to bat")
case 1:
    print("One strike")
case 2:
    print("two strikes")
case 3:
    print("three strikes")
default:
    break
    print("How can you have \(strikes) strikes!?")
}

let tempIsIdeall = false
switch tempIsIdeall {
case true:
    print("Temp is ideal")
case false:
    print("temp is not ideal")
}

let temperatureInFahrenheitt = 90
switch temperatureInFahrenheitt {
case 32 :
    print("It's very cold. Consider wearing a scarf.")
case 90 :
    print("It's really warm. Don't forget to wear sunscreen.")
default:
    break
    print("It's not that cold. Wear a t-shirt.")
}

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
print(description)


let approximateCount = 62
let countedThings = "moons orbiting Saturn"
var naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")
// Prints "There are dozens of moons orbiting Saturn."

temperatureInFahrenheit = 90


switch temperatureInFahrenheit{
case 1..<32:
    print("It's very cold. Consider wearing a scarf.")
case 33..<86:
    print("It's really warm. Don't forget to wear sunscreen.")
default:
    print("It's not that cold. Wear a t-shirt.")
    break
    
}

//Tuples are objects
let agnesInfo = ("Agnes", 24, 11106)
let hollyInfo = ("Holly", 33, 10301)
let kaiInfo = ("Kai", 18, 11106)
let person1 = ("p1", 25, 10300)
let person2 = ("p2", 26, 11100)
let person3 = ("p3", 27,444)
let person4 = ("p4", 28, 14999)
// because personInfo is a var we can assign it any of the constants above
var personInfo = agnesInfo
//_ is a wildcard operator, it’s a way of saying it matches with everything
switch personInfo {
case("Agnes",_,_):
    print("Hi Agnes")
    
case (_, 0..<30, 10300...10399):
    print("\(personInfo.0) is young and lives on Staten Island")
case (_, 0..<30, 11100...11199):
    print("\(personInfo.0) is young and lives in LIC")
case (_, 0..<30, _):
    print("\(personInfo.0) is young and we don't know where they live")
case (_, _, 10000...14999):
    print("\(personInfo.0) lives in New York State")
default:
    print("We can't say anything interesting about \(personInfo.0)")
}

agnesInfo.1

