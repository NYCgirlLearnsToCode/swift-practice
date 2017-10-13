//: Playground - noun: a place where people can play

import UIKit


var userName: String?
//Write 3 different ways of safely unwrapping and printing the value of userName.  If it is nil, print "No name"
//
//Method one: Check for nil and force unwrap
//userName!
//
//Method two: Optional binding
if let userName = userName {
    print(userName)
}else{
    print("no name")
}
//Method three: Nil coalescing

print(userName ?? "no name")//if it's nil then "no name"
var backgroundColor: String?
print(backgroundColor ?? "Blue")

//Given an optional width and an optional height of a rectangle, write code that calculates and prints the area. Print an error message if either value is nil.


var width: Double?
var height: Double?

if let width = width, let height = height{
    print(width*height)
}else{
    print("error")
}




let myIntString = "35"
var newInt = Int(myIntString)
if let newInt = newInt {
    print(newInt + 15)
}



//Given an optional tuple of optional Ints, write code to safely unwrap the tuple and calculate the sum of its contents that aren't nil.

var scores: (Int?, Int?, Int?)?
scores = (2, nil, 9)
var sum = 0
if let scores = scores {
    if let score1 = scores.0 {
        sum += score1
    }
    if let score2 = scores.1 {
        sum += score2
    }
    if let score3 = scores.2 {
        sum += score3
    }
    print(sum)
}
//The helper function randBool is used for the next few questions...
//Safely unwrap “tuple” if there’s a non-nil tuple value and print it out

func randBool() -> Bool {
    return arc4random_uniform(2) == 1 ? true : false
}

var tuple: (Int, Int)?
if randBool() {
    tuple = (5, 3)
    if let tuple = tuple {
        print(tuple)
    }
}else{
    print("There is no value")
}
let myInt: Int?
if randBool() {
    myInt = 5
    if let myInt = myInt {
        print(myInt * 2)
    }
} else {
    print("There are no elephants here.")
}

//Write code that prints out the product of myDouble and doubleTwo or prints an error message if myDouble is nil

var myDouble: Double?
let doubleTwo: Double = 5
if randBool() {
    myDouble = 12
    if let myDouble = myDouble {
        print(myDouble * doubleTwo)
    }
}else{
    print("error")
}

var tOrF = false
if tOrF == false {
    print("oj")
}

var isTheGreatest: Bool?
if randBool() {
    isTheGreatest = true
} else {
    isTheGreatest = false
    if let greatest = isTheGreatest {
        print(greatest)
    }
}

//Given the code below print the sum of each non-nil element in myTuple.

var myTuple: (Int?, Int?, Int?, Int?)
var sum1 = 0
if randBool() {
    myTuple.0 = 5
    myTuple.2 = 14
    if let first = myTuple.0, let second = myTuple.2 {
        sum1 = first + second
    }
} else {
    myTuple.1 = 9
    myTuple.3 = 11
    if let third = myTuple.1, let fourth = myTuple.3 {
        sum1 = third + fourth
    }
}
print(sum1)


//Given an optional int numberOfPeople, write code that unwraps and prints it only if it is even. Try using optional binding with a condition.

var numberOfPeople: Int?
if randBool() {
    numberOfPeople = 108
    if let numberOfPeople = numberOfPeople {
        if numberOfPeople % 2 == 0 {
            print(numberOfPeople)
        }
    }
}else{
    print("not even")
}


//
//Given the array poorlyFormattedCityNames, create a new array with the city names capitalized and any nil values removed.

//Output: ["New York", "Boston", "Chicago", "Los Angeles", "Dallas"]

let poorlyFormattedCityNames: [String?] = ["new york", "BOSTON", nil, "chicago", nil, "los angeles", nil, "Dallas",]
var cityNames = [String]()
for city in poorlyFormattedCityNames {
    if let cities = city {
        cityNames.append(cities.capitalized)
        
    }
}
print(cityNames)

//Given a random array of optional numbers, create a new array of all the even numbers that aren't nil.
var aBunchOfNumbers: [Int?] = []
var newBunchOfNumbers = [Int]()
for _ in 0..<20 {
    aBunchOfNumbers.append(randBool() ? Int(arc4random_uniform(102)) : nil)
}
for number in aBunchOfNumbers {
    if let aBunchOfNumbers = number {
        if aBunchOfNumbers % 2 == 0 {
            newBunchOfNumbers.append(aBunchOfNumbers)
        }
    }
}
print(newBunchOfNumbers)


// Some students were asked some questions about their favorite foods and colors and the answers were stored in an array studentInfo.
let studentInfo: [(String, String?, String?)] = [("Bill", "Burgers", "Blue"), ("Rita", nil, "Red"), ("Peter", "Pizza", "Purple"), ("Sarah", "Sandwiches", nil), ("Jeff", nil, nil), ("Lucy", "Leftovers", "Lilac"), ("Mike", "Meat", "Mauve"), ("Gemma", nil, "Green")]

// a. Print the names of the students that do not have a favorite color.
print("A")
for student in studentInfo {
    if student.1 == nil {
    print(student.0)
    }
}

// b. Print the names of the students that don't have a favorite color or a favorite food.
print("B")
for student in studentInfo {
    if let _ = student.2 {
        //    print(student.0)
    }else {
        print(student.0)
    }
}
// c. Create a new array of type [(String, String, String)] that contains the students with both favorite colors and foods.
