//Print all characters
var goodMorning = "Good Morning!"

//Method one: For in loop
for c in goodMorning where c != " " {
    print(c, terminator: "")
}
print()
//Method two: While loop with indicies
var currentOffset = 0
while currentOffset < goodMorning.count {
    let currentIndex = goodMorning.index(goodMorning.startIndex, offsetBy: currentOffset)
    let currentChar = goodMorning[currentIndex]
    print(currentChar, terminator: "")
    currentOffset += 1
}
print()
//Method three: For loop with indicies
for currentOffset in 0..<goodMorning.count {
    let currentIndex = goodMorning.index(goodMorning.startIndex, offsetBy: currentOffset)
    let currentChar = goodMorning[currentIndex]
    print(currentChar, terminator: "")
}
print()



How is a Bool stored in memory? true or false is either 0/1 so its 1 bit
How is an Int8 stored in memory? 8 bits
How to store multiple intergers? A tuple of Ints, e.g (4, 9, 10)
a Range of Int, e.g 3..<10


//Initializing Arrays

var oldSyntaxArr: Array<Int> = Array()
var newSyntaxArr: [Int] = Array()

var oldSyntaxInference = Array<Int>()
var newSyntaxInference = [Int]()
//In array of specified Ints, cannot put strings in there
let planets = ["Mercury", "Venus", "Jupiter"] //Array
let planetsTuple = ("Mercury","Venus", "Jupiter") //Tuple
//tuples can store diff types but cannot iterate through a tuple


let repeatedArr = Array(repeating:[4.34], count:3)
let repeatedArr2 = [Double](repeating: 2.4, count:4)

//can access values in an Array very quickly same amt of tiem to access 2nd value and 2000th value

let thirdRockFromTheSun = planets[2]//accessing 3rd value

//Print the first planet
print(planets[0])
//Print the last planet
print(planets[planets.count-1])
//Print the second to last planet
print(planets[planets.count-2])


//Common Library methods
planets.first
planets.last
planets.count
planets.isEmpty

//append
goodMorning.append("!")
newSyntaxArr.append(5)
newSyntaxArr.append(4)
newSyntaxArr.append(10)
newSyntaxArr.append(9)
newSyntaxArr.remove(at: 2)

//insert
newSyntaxArr.insert(100, at: 3)
newSyntaxArr = [1,2,3,4]
newSyntaxArr.reverse()
print(newSyntaxArr)

let newReversedArr = Array(newSyntaxArr.reversed())
//when using .reversedit makes a new object and needs to make it an array first or it'll stay some weird type
print(newReversedArr)
*/

var planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
planets += ["Pluto", "Planet X", "Nibiru"]
planets.append("Pluto")
print(planets)
planets.remove(at: planets.count-1)
planets.popLast()//removes last index
planets.remove(at: planets.index(before: planets.endIndex))
//endIndex is count
print(planets)
//bad practice to insert things at beginning of array

let earth = planets[2]
let gasGiants = planets[4...6] //gasGiants is an array SLICE so 1st index is 4, so force it into an Array for normal array indicing
//Array slices keep the same indices as  before (see line 91)
let beyondEarthPlanes = planets[3...]//Array slice from 4th element to last
let upToEarthPlanets = planets[..<2]
//var upToEarthPlanets = planets[..<2]

planets[2] = "New Earth"//can get values & set values with subscript
planets[2] += "!"
print(planets)


let myFavoriteStrings = ["this one!", "I like this string", "poetry",  "bison and camels"]

//Methid one: For in loop
for str in myFavoriteStrings{
   print(str)
}
//Method two: Using indices
for index in 0..<myFavoriteStrings.count where index != 2 {
   let currentStr = myFavoriteStrings[index]
   print(currentStr)
}
let myFavNums = [1,3,2,4,2,3]
//THIS IS WRONG
for value in myFavNums {
   print(myFavNums[value])
}
//prints 3 4 2 2 2 4 bc go through each value in myFaveNums and then that value's index and print that value v = 1 so print 3, v = 3 so print 4, v = 2 so print 2

let arr1 = [1,2,3,4]
var arr2 = [1]
arr2.append(2)
arr2 += [3,4]

arr1 == arr2 //arrays are equatable but not camparable
let arr3 = ["1", "2", "3", "4"]
//cannot: set value, remove, append BECAUSE ITS A IMMUTABLE LET CONSTANT, CAN DO THE PREV IF ITS A VAR

let reversedArr = Array(arr3.reversed())

var arr4 = [2,54,1,452,3,5,2,3,0]
arr4.sorted(by: >)
print(Array(arr4.reversed()))

let myStr = "This could be anything, really."
let myStrAsArr = Array(myStr)//turn into Array to manipulate
let myStrBackToStr = String(myStrAsArr)//turn back into string
print(myStrAsArr[0...3])// can print via index

component separated MAKES STRINGS AN ARRAY separatedBy: " "
myStr.components(separatedBy: "x ")
let otherStr = "nameOne,nameTwo,nameThree"
otherStr.components(separatedBy: ", ")

var myArrayThree: [String]
//declares an array of strings

var westernStates = ["California", "Oregon", "Washington", "Idaho", "Illinois", "Kansas"]
westernStates.remove(at:4)
westernStates.remove(at:4)

let myString = "This is good practice with Strings!"
var spaceCount = 0
for letters in myString{
   if letters != " " {
       spaceCount += 1
   }
}
print(spaceCount)




/*Iterate through the array below. For each sentence, print out how many non-whitespace characters are in it.
 */

let myFavoriteQuotes = ["To be or not to be, that is the question.", "The only source of knowledge is experience.", "Mr. Gorbachev, tear down this wall!", "Four score and twenty years ago..."]
var spaceCount = 0
for strings in myFavoriteQuotes {
    for letters in strings{
        if letters != " " {
            spaceCount += 1
        }
    }
print(spaceCount)
spaceCount = 0
}

