import Cocoa
//Dictionaries are good for storing common words & definitions, states & their capital cities because of key:value pairs

//creating an instance of a dictionary mapping Ints to strings
//var dict: [Int:String] = [:]
//
////set the value of the key "China" to 1404:
////a)
//var populationInMillionsA = ["USA": 318, "Brazil": 200, "China": 1357]
//populationInMillionsA["China"] = 1404
//
////c)
//var populationInMillionsC = ["USA": 318, "Brazil": 200, "China": 1357]
//populationInMillionsC.updateValue(1404, forKey: "China")

//What will be printed to the console after the below code is run?
//
//let set1 = Set([2, 4, 6, 8, 2, 4, 6, 8])
//let set2: Set<Int> = [1, 2, 3, 4, 5, 7, 9]
//let set3 = set1.intersection(set2) //.intersection() takes the values in common from both
//print(set3)

//Create an instance of a dictionary called citiesDict that maps 3 countries to their capital cities.
//Add two more countries to your dictionary.
//Translate at least 3 of the capital names into another language.
//var citiesDict: [String : String] = ["France": "Paris", "Italy": "Rome", "China": "Beijing"]
//citiesDict["Australia"] = "Sydney"
//citiesDict["Japan"] = "Tokyo"
//citiesDict["France"] = "P"
//citiesDict["Italy"] = "R"
//citiesDict["China"] = "B"
//print(citiesDict)

//var someDict:[String:Int] = ["One": 1, "Two": 4, "Three": 9, "Four": 16, "Five": 25]
//    //Using someDict, add together the values associated with "Three" and "Five" and print the result.
//    //Add values to the dictionary for the keys "Six" and "Seven".
//    //Make a key caled "productUpToSeven" and set its value equal to the product of all the values.
//    //Make a key called "sumUpToSix" and set its value equal to the sum of the keys "One", "Two", "Three", "Four", "Five" and "Six".
//    //Remove the new keys made in the previous two steps
//    //Add 2 to every value inside of someDict.
//var three = someDict["Three"]
//var five = someDict["Five"]
//if let three = three,let five = five {
//    let sum = three + five
//    print(sum)
//}else{
//    print("no")
//}
//var product = 1
//someDict["Six"] = 6
//someDict["Seven"] = 7
//for (_, value) in someDict {
//    product *= value
//}
//print(product)
//someDict["productUpToSeven"] = product
//print(someDict)
//var sum = 0
//for (key, value) in someDict {
//    switch key {
//    case key where key == "Seven":
//        continue
//    case key where key == "productUpToSeven":
//        continue
//    default:
//        sum += value
//    }
//}
//print(sum)
//someDict["sumUpToSix"] = sum
//4 + 25 + 9 + 16 + 6 + 1
//someDict["sumUpToSeven"] = sum
//someDict.removeValue(forKey: "Seven")
//someDict.removeValue(forKey: "sumUpToSix")
//print(someDict)
////add 2 to each val in dict
//for (key,var value) in someDict {
//    value += 2
//    someDict[key] = value
//}
////var test: Int?
////test = 1
////if let test = test {//if there is a value, unwrap & do this
////    print(test)
////}else{
////    print("no")
////}
//func add(a:Int,b:Int) -> Int{
//    return a + b
//}
//add(a: 2, b: 2)
//
////Complete the function so that it will print out total cost after tax. Make sure to call the function afterwards.
//
//let itemCost = 45.0
//let nyTax = 0.08775
//
//func totalWithTax(itemCost x: Double, nyTax y:Double) -> Int{
//   return (Int(x) * Int(y)) + Int(x)
//}
//totalWithTax(itemCost: itemCost, nyTax: nyTax)
//(45.0 * 0.08775) + 45.0
////Then, modify the function you implemented to have a return type of Int, and use an external name that looks more readable. Function calls should look something like "total cost of the item after tax"
//let todaysTemperature = 90
//func temp(temperature x: Int) -> String{
//    switch x{
//    case x where x <= 40:
//        print("It's cold out.")
//         case x where x >= 85:
//            print("It's really warm.")
//    default:
//        print("Weather is moderate.")
//    }
//    return "wow"
//}
//temp(temperature: todaysTemperature)

let numbers = [32, 21, 33, 2, 66, 88, 43, 902, 73, 27, 905]
let words = ["One", "two", "Buckle", "my", "shoe"]
//Sort numbers ascending.
numbers.sorted()
//Sort words, descending case-insensitive.

//Sort words by the length of each element.
//Sort numbers ascending, even numbers first, odd numbers second. Output will be [2, 32, 66, 88, 902, 21, 27, 33, 43, 73, 905].




