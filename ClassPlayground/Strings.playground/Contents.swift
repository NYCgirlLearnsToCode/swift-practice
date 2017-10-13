//: Playground - noun: a place where people can play

import UIKit
/*
var str = "Hello, playground"
print(str)
"\(str)" //interpolate

//concatenation
let newString = "one" + "two"


//compare strings
"apple" < "banana"

"dog" == "dog"

"A" != "a"

let myNum = 5//Int literal
let someString = "literally a string" //string literal
"text can go here"
4// Int to string
let newerString = String(8)

//Character to String
let myChar: Character = "a"
let myCharAsStr = String(myChar)
myCharAsStr == newString

let zero =  Int ()
let emptyStr = String() //Empty String is the zero of strings, can be compared
let emptyStr2 = ""

emptyStr == emptyStr2

//.descripton turns something that is not a string to a string
8.description
423.44.description
(3..<10).description
(4,2,6) //doesnt workk for tuples

let userAge: String = "15"
let userAgePlusTen = Int(userAge)! + 10
print("Your age in ten years will be ", userAgePlusTen)//adds .description

//Variables are mutable & constants are not
let favoriteComposer = "J. S. Bach"
var listeningTo = "John Dowland"
listeningTo = "Miles Davis"
print(listeningTo)


let newArtist = "Pink" + " " + "Floyd" //Concatenation

var watchingMovie = "Toy Story"
var nextMovie = watchingMovie
nextMovie += " Two"
print("Watching: \(watchingMovie), gonna watch \(nextMovie)")

//favoriteComposer = favoriteComposer + "!" compile error because it is a constant

//listeningTo = listeningTo + ", Trumpeter"
listeningTo += ",Trumpeter"
var n =  59
n += 3

//We can also use the append method to add Strings together

var name = "Ben"
name.append(" Stone")
name == "Ben Stone" //true

//String interp \() anything u put inside
"\(1,4,2)"
//also works w bool & int expressions
var numMovies = 2
print("There are \(numMovies) in the queue")
let guessNumberOfMoviesInQueue = 4
print("To say there are \(guessNumberOfMoviesInQueue) movies in the queue would be \(numMovies == guessNumberOfMoviesInQueue).")


for  letter in nextMovie where letter == "a" {
    print(letter)
}

//escaoing characters using \
print("\n")


//Terminator & Separatir
//Terminator says how we end lines. Bt default, it's \n
print("hello", terminator: " END LINE")
print("line two")

//Separator says what to do with comma-separated print statements
//Default is " "
print("one", "two", "three", separator: "\n")
*/
let newMovie = "Toy Story Two"
//print ^ each word on sep lines w a for loop
for c in newMovie {
    if c == " "{// if character is a blank space
            print()// print blank line
    } else {
    print("\(c)" ,terminator: "")
    }
}

"abcd".capitalized
"abcd".uppercased()
"ABCD".lowercased()

//contains
newMovie.lowercased().contains("story")

let name = "Mr.Stone"
name.hasPrefix("Mr. ")
let otherName = "Dr. House MD"

otherName.hasSuffix("MD")

let alphabet = "abcdefg"
let reversedAlphabet = String(alphabet.reversed())
print(reversedAlphabet)

var hangmanStr = "bananas"
hangmanStr.replacingOccurrences(of: "a", with: "_")


let a = "\u{61}"
let smileyFace = "\u{1F602}"
"My favorite char is: \u{30F8}"
"\u{1218}"

//2 character can be smashed together, diacritial marks, multiple characters in single char marks
let aAcute = "\(smileyFace)\u{0301}"
print(aAcute)

let precomposed: String = "\u{D55C}"                  // 한
let decomposed: String = "\u{1112}\u{1161}\u{11AB}"   // ᄒ, ᅡ, ᆫ
precomposed == decomposed
let newThing = decomposed + precomposed
for c in newThing {
    print(c)
}


let myString = "Howdy!"
//let firstChar = myString[0] //COMPILE ERROR
//Start index
let startIndex = myString.startIndex
let firstChar = myString[startIndex]
print(firstChar) //prints "H"

//Third character
let testString = "This string is for testing only"
let testStringStart = testString.startIndex
let thirdCharIndex = testString.index(testStringStart, offsetBy: 2)
let thirdChar = testString[thirdCharIndex]
print(thirdChar) //prints "i"

//Last character
let myStringEnd = myString.endIndex
let lastCharIndex = myString.index(before: myStringEnd)
let lastChar = myString[lastCharIndex]
print(lastChar) //prints "!"

newThing[newThing.index(before: newThing.endIndex)]
let subString = newThing[newThing.index(after: newThing.startIndex)...]

for i in newThing.indices {
    print(newThing[i])
}

"b" > "a"
"a" > "A"
// In string comparisons, a is the smallest & A is the smallest



//print 6th char
let helloStr = "Hello there!"
let sixthCharIndex = helloStr.index(helloStr.startIndex, offsetBy: 5)
print(helloStr[sixthCharIndex])

//4th char
let byeStr = "Goodbye there"
let fourthCharIndex = byeStr.index(byeStr.startIndex, offsetBy: 3)
print(byeStr[fourthCharIndex])

//2nd to last char in "adios"
let adios = "adiós"
let secondToLast = adios.index(adios.startIndex, offsetBy:3)
print(adios[secondToLast])
//last char
let emojis = "🏆☕🤷"
emojis.last
emojis[emojis.index(before: emojis.endIndex)]












