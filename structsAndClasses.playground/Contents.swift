//: Playground - noun: a place where people can play

import Cocoa

class Giant {
    var name: String
    var weight: Double
    var homePlanet: String
    
    init(name: String, weight: Double, homePlanet: String) {
        self.name = name
        self.weight = weight
        self.homePlanet = homePlanet
    }
}
let fred = Giant(name: "Fred", weight: 340.0, homePlanet: "Earth")
print(fred.name)



//Will these three lines of code run? If not, why not?

fred.name = "Brick"
fred.weight = 999.2
fred.homePlanet = "Mars"


struct Alien {
    var name: String
    var height: Double
    var homePlanet: String
}
var bilbo = Alien(name: "Bilbo", height: 1.67, homePlanet: "Venus")

//Will these three lines of code run? If so, why not?

bilbo.name = "Jake"
bilbo.height = 1.42
bilbo.homePlanet = "Saturn"

//Consider this bit of code that uses the Giant class:

let edgar = Giant(name: "Edgar", weight: 520.0, homePlanet: "Earth")
print(edgar.name)
let jason = edgar
jason.name = "Jason"
//What will the value of edgar.name be after those three lines of code are run? What will the value of jason.name be? Why?
print(edgar.name)
print(jason.name)
//The value of jason & edgar will be "Jason" because jason = edgar.

//Given this bit of code that uses the Alien struct:

var charles = Alien(name: "Charles", height: 2.25, homePlanet: "Pluto")
var charlesFromJupiter = charles
charlesFromJupiter.homePlanet = "Jupiter"
//What will the value of charles.homePlanet be after the above code run? What about the value of charlesFromJupiter.homePlanet? Why?
//The value of charles.homePlanet is "Pluto" and the value of charlesFromJupiter.homePlanet is "Jupiter"

struct BankAccount {
    var owner: String
    var balance: Double
    
    mutating func deposit(_ amount: Double) {
        balance += amount
    }
    
    mutating func withdraw(_ amount: Double) {
        balance -= amount
    }
}

//a. Write a struct called person that has 3 properties of type String, a first name, a last name and a middle name. Have the middle name be optional. Create 2 instances of a person, one with a middle name and one without. Print one of their first names.

struct Person {
    var firstName: String
    var lastName: String
    var middleName: String?
    func fullName() -> String {
        if middleName != nil {
            return firstName + " " + lastName
        }
        return firstName + middleName! + lastName
    }
    
}
let personWithMidName = Person(firstName: "Lisa", lastName: "J", middleName: "NA")
print(personWithMidName.firstName)
let personWithNoMidName = Person(firstName: "Diego", lastName: "Baca", middleName: "Adolfo")
print(personWithMidName.firstName)

//b. Write a method in Person called fullName that will return a formatted string of an instance's full name. Call this method on both the instances you created in part a.



//a. Create a class called Book that has properties for title, author and rating, of type String, String, Double respectively. Dont forget the initializer. Create some instances of Book.



//b. Add a method to Book called isGood that returns true if its rating is greater than or equal to 7


class Book {
    var title: String
    var author: String
    var rating: Double
    
    init(title: String, author: String, rating: Double) {
        self.title = title
        self.author = author
        self.rating = rating
    }
    
    func isGood() -> Bool {
        return rating >= 7.0
    }
}

let myBook = Book(title: "Thus Spake Zara Thustra", author: "Niezche", rating: 0.0)
myBook.isGood()

//Work through the following tasks one by one, in order. Each time, add to the dog class above. Each task has sample output that you should be able to replicate when you are done.

//1. Give the dog four properties, all with default values: name (string), breed (string), mood (string), and hungry (boolean).
//var dog1 = Dog()
//dog1.name //returns "dog"
//dog1.breed //returns "unknown"
//dog1.mood //returns "calm"
//dog1.hungry //returns false
class Dog {
    var name: String
    var breed: String
    var mood: String
    var hungry: Bool
    init(name: String = "dog", breed: String = "unknown", mood: String = "calm", hungry: Bool = false) {
        self.name = name
        self.breed = breed
        self.mood = mood
        self.hungry = hungry
    }
    func playFetch() {
        mood = "playful"
        hungry = true
        print("Ruff!")
    }
    func feed() {
        if hungry == true {
            hungry = false
            print("woof")
        }else{
            print("The dog doesn't look hungry")
        }
    }
    func toString() -> String {
        return """
        Name: \(name)
        Breed: \(breed)
        Mood: \(mood)
        
        """
    }
    
}
//let dog2 = Dog(name: "Oreo", breed: "English Setter", mood: "excited", hungry: true)

//2. Add an init method so that you can initialize new dogs with values for name, breed, mood, and hungry. It should still have the same default values for these properties
var dog2 = Dog(name: "Oreo", breed: "English Setter", mood: "excited", hungry: true)
dog2.name //returns "Oreo"
dog2.breed //returns "English Setter"
dog2.mood //returns 'excited'
dog2.hungry //returns true

//3. Add an instance method called playFetch(). It should set the dog's hungry property to true, set its mood property to playful, and print "Ruff!"
var dog3 = Dog(name: "Rhett", breed: "English Setter", mood: "excited", hungry: false)
dog3.hungry //returns false
dog3.mood //returns "excited"
dog3.playFetch() //prints "Ruff!"
dog3.hungry //returns true
dog3.mood //returns "playful"


//4. Add an instance method called feed(). If the dog is hungry, it should set hungry to false and print "Woof!". If the dog is not hungry, it should print "The dog doesn't look hungry"
var dog4 = Dog(name: "Partner", breed: "Golden Retriever", mood: "thoughtful", hungry: true)
dog4.hungry //returns true
dog4.feed() //prints "Woof!"
dog4.hungry //returns false


//5. Add an instance method called toString that returns a string type description of the dog:
var dog5 = Dog(name: "Rascal", breed: "Golden Retriever", mood: "feeling pawesome", hungry: true)
print(dog5.toString())
//prints:
//Name: Rascal
//Breed: Golden Retriever
//Mood: feeling pawesome


//There are three common scales that are used to measure temperature: Celsius, Fahrenheit, and Kelvin
//C = (F - 32) / 1.8
//F = 1.8 * C + 32
//K = C + 273
//Level One:
//Make a struct called FreezingPoint that has three properties: celsius, fahrenheit, and kelvin. Give them all default values equal to the freezing point of water.
struct FreezingPoint {
    var celsius = 0
    var fahrenheit = 30
    var kelvin = 273
}


//Level Two
//Make a struct called Celsius that has three properties: celsius, fahrenheit, and kelvin. Give celsius a default value of 0.0, and make the values of fahrenheit and kelvin correct values, converted from the celsius property.
struct Celsius {
    let celsius: Double
    var fahrenheit: Double{return 1.8 * celsius + 32}
    var kelvin: Double{return celsius + 273}
    init(celsius : Double = 0.0) {
        self.celsius = celsius
    }
    func isBelowFreezing() -> Bool {
    return celsius < 0
    }
}



var tenDegreesCelsius = Celsius(celsius: 10.0)
tenDegreesCelsius.celsius //returns 10.0
tenDegreesCelsius.kelvin //returns 283.0
tenDegreesCelsius.fahrenheit //returns 50.0
print(tenDegreesCelsius.isBelowFreezing())


//Level Three

//Give the Celsius struct a method called isBelowFreezing that returns a boolean value of true if the temperature is below freezing.


// Create a struct called RGBColor that has 3 properties, red, green, blue that are all of type Double.
struct RGBColor{
    let red: Double
    let green: Double
    let blue: Double
    //init()
}
// Given the below array of color dictionaries, create an array of RGBColor



let colorDictArray: [[String: Double]] = [["red": 1.0, "green": 0.0, "blue": 0.0],
                                          ["red": 0.0, "green": 1.0, "blue": 0.0],
                                          ["red": 0.0, "green": 0.0, "blue": 1.0],
                                          ["red": 0.6, "green": 0.9, "blue": 0.0],
                                          ["red": 0.2, "green": 0.2, "blue": 0.5],
                                          ["red": 0.5, "green": 0.1, "blue": 0.9],]
//Diego's solution
//let myArr = colorDictArray.map{RGBColor(red: $0["red"]!, green: $0["green"]!, blue: $0["blue"]!)}
//myArr.forEach{print($0)}

//for color in myArr {
//    print(color)
//}
//same as forEach
var arr: [RGBColor] = []

for dict in colorDictArray {
    guard let redVal = dict["red"], let greenVal = dict["green"], let blueVal = dict["blue"] else {
        continue
    }
    let newColor = RGBColor(red: redVal, green: greenVal, blue:blueVal)
    arr.append(newColor)
}
print(arr)

// a. Create a class called Movie that has properties for name (String), year (Int), genre (String), cast ([String]), and description (String). Create an instance of your Movie class



// Create an instance method inside Movie called blurb that returns a formatted string describing the movie.

//e.g. Minions came out in 2015. It was an animation staring Sandra Bullock, Jon Hamm, and Michael Keaton.


class Movie {
    let name: String
    let year: Int
    let genre: String
    let cast: [String]
    let plot: String
    
    init(name: String, year: Int, genre: String, cast: [String], plot: String) {
        self.name = name
        self.year = year
        self.genre = genre
        self.cast = cast
        self.plot = plot
    }
    
    func blurb() -> String {
        var blurbString = name
        blurbString += " came out in "
        blurbString += String(year)
        blurbString += ". It was an "
        blurbString += genre
        blurbString += " staring "
        blurbString += cast.joined(separator: ", ")
        return blurbString + "."
    }
}

let pulpFiction = Movie(name: "Die Hard", year: 1987, genre: "action", cast: ["Bruce Willis", "Alan Rickman"], plot: "John Mclain saves the day!")
print(pulpFiction.blurb())












