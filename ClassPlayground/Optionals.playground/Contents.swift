//: Playground - noun: a place where people can play

import UIKit



//var temperature: Double = 76
//if my temp meter is off, temp is zero

//temperature = 0
/*
var userName: String = "Ben"
//Zero is imperfect, because now we can't measure temps that are actually zero
//Optionals are a type that wraps around another that allows it to have a value or nil
var temperature: Double? = 76//the ? is the optional syntax
//var temperature : Optional<Double> = 76 Don't use this old Swift 3 syntax
//temperature = nil
temperature = 78
//0 & nil are totally different from each other
//var arrIfInts: Array<Int>
var arrOfInts: [Int]
print(temperature)

//To get the value of an optional, you need to unwrap it
//force unwrapping (quickest unsafe way, if no value inside will crash)
//works when value is NOT nil
temperature! + 4


//safer way to do it is if var is !=nil, then unwrap
if temperature != nil {
    print("The temperature reading today is",temperature!)
    let tempIsIdeal = temperature! > 70 && temperature! < 85
    print("And it is \(tempIsIdeal) that it's nice out")
}else{
    print("The thermometer is turned off")
}

//Make 3 more variables of an optional type
var aBool:Bool? = true
var aInt:Int? = nil
var aDouble:Double? = nil
var namesOfkids:[String]? = nil
//or if no kids so no names
//var namesOfkids:[String] = []
var tvChannel: Int?// if TV is off then nil
//when setting no value to optional, it assumes value is nil
var girlfriendsName: String? = nil//because I don't have one
var bankBalance:Double? = 9_340.32//or nil if u don't have a bank acc
var nameOfkid: [String?] = [nil, nil, "dsf"]
//when you set optionals use var because cannot change value of let constants
var mainCharacter: String?
//Force unwrap mainCharacter and print it.
//value is nil so would crash
//Give mainCharacter a value to fix the problem.
mainCharacter = "L"
print(mainCharacter!)
*/
//What is the difference between a compile time error and a run time error?
//compile time error happens when code is compiling/interpreting code, happens when code compiles and runs but runs into a problem during execution. E.g. your program attemtps to divide by zero or access memory it doesn't own, or tries to force unwrap a nil optional.
//Which is better, a compile time error or a run time error?
//Compile time errors are better because they're encountered during development and the compiler can often give us more details about the error and solution. This is due, in part to the fact that compile time and run time errors are fundamentally different. By analogy, it's easier to fix spelling or even grammatical errors in an essay than it is to write excellent prose.

//How do optionals protect us from run-time errors?


/*
//Binding
var bookTitle: String = "The Hobbit"
var secondTitle: String?
var author: String = "J.R.R. Tolkien"
var coAuthor: String?
secondTitle = "There and Back Again"

// bind the new constant title to the value of secondTitle
if let unwrappedSecondTitle = secondTitle {
    //unwrappedSecondTitle is a string
//if secondTitle != nil, unwrap and put into new unwrappedSecondTitle constant
    print("Full title: \(bookTitle) or \(unwrappedSecondTitle)")
}
else {// if nil
    print("Full title: \(bookTitle)")
}
*/
/*
var bookTitle: String = "The Hobbit"
var secondTitle: String?
var author: String = "J.R.R. Tolkien"
var coAuthor: String?
coAuthor = "BOB"
secondTitle = "There and Back Again"
//Bind coAuthor and print both authors' names when it has a value. Only print the main author otherwise.
if let safeAuthor = coAuthor {
    print("\(author) and \(safeAuthor)")
}else{
    print("\(author)")
}
*/
//var bookReviewCount: Int?
//var avgStarRating: Double?
//var bookTitle: String = "The Hobbit"
//
//bookReviewCount = 28
//avgStarRating = 3.7
//// can unwrap on single line as long as separated with commas
//if let count = bookReviewCount,let rating = avgStarRating {
//    if (rating > 3 && count > 5) {
//        print("\(bookTitle): \(rating) stars")
//    }
//    else {
//        print("\(bookTitle)")
//    }
//}
//else {
//    print("\(bookTitle)")
//}
////Given bookEndorsement bind it and print its value. Include an else block with a message.
//
//var bookEndorsement: String?
//if let endorsement = bookEndorsement {
//    print("Endorsement: \(endorsement)")
//}
//else {
//    print("There was no endorsement.")
//}
//var firstName: String?
//var middleInitial = "H"
//var lastName: String?
//// comment/uncomment these two lines to test the bindings below
//firstName = "Isabel"
//lastName = "Archer"

// nested implementation
// note how we reuse the identifier; that's ok
/*
if let firstName = firstName {
    if let lastName = lastName {
        print("Name: \(firstName) \(lastName)")
    }
    else {
        print("First Name: \(firstName)")
    }
}
else {
    print("Neither name was set.")
}
*/
// same-line implementation
/*
if let firstName = firstName, let lastName = lastName {
    print("Name: \(firstName) \(lastName)")
}
else {
    print("Neither name was set.")
}
 */

//Guard statements make sure condition is true before continuing your loop,only work in loops

//var myArr = [1,4,2,9]
//var currentIndex = 0
//for _ in myArr {
//    guard currentIndex < myArr.count else {
//        break
//    }
//    print(myArr[currentIndex])
//}

//var myArr: [Int] = []
//myArr.last
////var myStr = "yellow"
//let myInt = Int(myStr)

//Implicitly unwrapped optionals don't need to be unwrapped when used. This seems odd, and at this point, before we've dealt with writing our own classes it is a little early to see their purpose. For now, don't declare implicitly unwrapped optionals, but let's be ready to use them when we see them.

//var firstName: String!
//firstName = "Caspar"
//firstName = nil
//let myStr = firstName + "The friendly ghost"
/*
var firstName: String = "Ben"
var lastName: String? = "Stone"
lastName = nil
//??nil coalescing operator, if it is nil then ____
lastName ?? "No last name"
lastName == "Stone"
*/

var heightOne: Int? = nil
var heightTwo: Int? = nil

heightOne == heightTwo

