//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
//
//let anna = (name: "Anna", age: 29)
//let bob = (name: "Bob", age: 42)
//let carla = (name: "Carla" , age: 34)
//
//let registry = [ anna, bob, carla]
//
////find out how old carla is
//print(registry[2].age)
//
//for person in registry {
//    if person.name == "Carla" {
//        print(person.age)
//    }
//}
//
//for person in registry where person.name == "Carla" {
//    print(person.age)
//}
////dictionary is liek an array except the subscript index does not have to be a number
////mapping a key with a value, key value pairs like objects in js
//// old syntax let nameDictionary = Dictionary<String, Int>()
//
////New syntax
////var nameDictionary = [String: Int]()
//
////Dictionary literal
//var nameDictionary = ["Carla": 34]
//nameDictionary["Anna"] = 29
//nameDictionary.updateValue(42, forKey: "Bob")
//
//nameDictionary["Carla"]
//
//var detailedDictionary = ["Carla": (age: 34, phone: 8675309)]
//detailedDictionary["Carla"]?.phone
////array map to something
////let testDictionary: [[Int]: Int] = [[1,2,3] :5]
//
//
//nameDictionary["Carla"]
////The Keys are unique
////Make a new Anna and give her age of 50
//
//nameDictionary["Anna"] = 50
//nameDictionary
////adding order does not correspond***
////geeraly vars bc would liek to change it later
////var baseballTeamsByCode: [String:String] // 1
////var baseballTeamsById = [Int:String]() // 2 empty dictionary
////var emptyDictionary: [Int: String] = [:]
////var metsPlayers = [12:"Juan Lagares", 4:"Wilmer Flores", 7:"Jose Reyes"] // 3
//
////populating dictionairies
//var baseballTeamsByCode: [String:String]
//var baseballTeamsById = [Int:String]()
//baseballTeamsByCode = ["NYN":"Mets", "NYA":"Yankees", "TB":"Rays", "MIA":"Marlins"] // 1
//baseballTeamsById = [1001:"Mets", 1002:"Yankees", 1003:"Rays", 1004:"Marlins"] // 2
//baseballTeamsById.count
//baseballTeamsById.isEmpty
////can use subscript to access individual values
//let team = baseballTeamsByCode["MIA"] // optional string in case the key value u input does not exist hence the nil possibility
//
//var myArr = ["Team one", "Team two", "Team three"]
////modifying dictionary values
//myArr[0]
//myArr[1] = "New Team one"
//
////adding value
//baseballTeamsByCode["TB"] = "Tampa Bay Devil Rays"
//if let oldValue = baseballTeamsByCode.updateValue("Rays", forKey: "TB"){ // tells you the prev value -->
//    print("The old value was \(oldValue)")
//    print("Now the new value is \(baseballTeamsByCode["TB"]!)")
//}
//can use the above methods to update values or create new values
//no appending bc dictionaries use their own order

////deleting value
//baseballTeamsByCode["TB"] = nil
//baseballTeamsByCode.removeValue(forKey: "NYA")
//removeValue(forKey:) has the same functionality as updateValue(_:forKey:).
//
//We can remove all values by re-initializing to an empty dictionary.

//baseballTeamsByCode = [:]
var baseballTeamsByCode = ["NYN":"Mets", "NYA":"Yankees", "TB":"Rays", "MIA":"Marlins"]
for k in baseballTeamsByCode.values {
    print(k)
}

let teamKeys = [String](baseballTeamsByCode.keys)
let teamValues = Array(baseballTeamsByCode.values)

//typing dictionairies
let intToStr = [1: "John"]
let intToInt = [0:1]
let intToArr = [0: ["hi", "two"], 10: ["Bye", "three"]]
let intToBool = [0: false]

//Sets
let mySet: Set<String> = []
let mySet2 = Set<String>()
mySet.count
let mySet3: Set<Int> = [103456, 103761, 103764, 102778,103456, 103761, 103764, 102778]

let dupeArr = [5,2,2,5,6,8,8,1,8,5,2,9]
//let noDupeArrSet = Set(dupeArr)//turn arr into set to remove duplicates
//let noDupeArr = Array(noDupeArrSet)

let noDupeArr = Array(Set(dupeArr))
noDupeArr.contains(2)//use contains on sets & dictionaries instead of on arrays

//set operations
var s1: Set<Int> = [1,5,2,5,7]
var s2: Set<Int> = [2,1,3,8]

s1.intersection(s2)//Middle of the venn diagram(same values between both)
s1.subtracting(s2)
s1.union(s2) //All elements combined

s1.insert(10)
s1.insert(5)

s1.remove(5)
//Character Set
let letters = CharacterSet.lowercaseLetters

let userInput: UnicodeScalar = "1"
if letters.contains(userInput){
    print(userInput)
}else{
    print("lower case letter chars only!")
}




























