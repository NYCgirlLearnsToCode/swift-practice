//Remove "Illinois" and "Kansas" from the array below.

var westernStates = ["California", "Oregon", "Washington", "Idaho", "Illinois", "Kansas"]
westernStates.remove(at:4)
westernStates.remove(at:4)

//Then, using array subscripting and string interpolation, print out the String "orange, yellow, and lavender are some of my favorite colors".
//Create an array of strings called colors that contain "orange", "red", "yellow", "turquoise", and "lavender".
var array = ["orange", "red", "yellow", "turquoise", "lavender"]
print("\(array[0]), \(array[2]) and \(array[4]) are some of my favorite colors.")

//Iterate through the array below. For each each state, print out whether or not it is in the continental United States.
let moreStates = ["Hawaii", "New Mexico", "Alaska", "Montana", "Texas", "New York", "Florida"]

for state in moreStates {
    if state == "Hawaii" {
        print("\(state) is not in the continental US")
    } else {
        print("\(state) is in the continental US.")
    }
}


//Print out how many non-whitespace characters are in myString


let myString = "This is good practice with Strings!"
var spaceCount = 0
for letters in myString{
    if letters != " " {
        spaceCount += 1
    }
}
print(spaceCount)



//Print out how many non-whitespace characters are in myString
let myString = "This is good practice with Strings!"
var spaceCount = 0
for letters in myString{
    if letters != " " {
        spaceCount += 1
    }
}
print(spaceCount)

Add Comment

//Iterate through the array below. For each sentence, print out how many non-whitespace characters are in it.
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
//Iterate through garden and place any 🌷 that you find into the basket. Replace any 🌷 that you pick up with "dirt". Then print how many 🌷 are in your basket.

var garden = ["dirt","🌷","dirt","🌷","dirt","dirt","🌷","dirt","🌷","dirt"]
var basket = [String]()
for flower in garden {
    if flower != "dirt" {
        basket.append(flower)
    }
}
print(basket)


/*The below array represents an unfinished batting lineup for a baseball team. You, the coach, need to make some last minute changes:

Add "Suzuki" to the end of your lineup.
Change "Jeter" to "Tejada".
Change "Thomas" for "Guerrero"
Put "Reyes" to bat 8th instead.
*/
var battingLineup = ["Reyes", "Jeter", "Ramirez", "Pujols","Griffey","Thomas","Jones", "Rodriguez"]
 var battingLineup = ["Reyes", "Jeter", "Ramirez", "Pujols","Griffey","Thomas","Jones", "Rodriguez"]
battingLineup.append("Suzuki")
battingLineup[1] = "Tejada"
print(battingLineup)
battingLineup[5] = "Guerrero"
battingLineup.remove(at: 0)
battingLineup.append("Reyes")


//Given an array of Ints, find out if it contains a target number.  
let target = 109
var arrayOfInts = [3,4,5,32,109]
var hasTarget = false

for targetNumber in arrayOfInts {
    if targetNumber == target {
        hasTarget = true
    }
}
print(hasTarget)


// Find the largest value in an array of Int.  Do not use the built in max() method.

// let arrayOfNumbers: [Int]  = (1...100).map{ _ in arc4random_uniform(200)}.map{Int($0)}


//This creates an array of 100 numbers in between 0 and 200.  Don't worry about how.


//Find the largest value in an array of Int.  Do not use the built in max() method.
var maxNumber = 0
let arrayOfNumbers: [Int]  = (1...100).map{ _ in arc4random_uniform(200)}.map{Int($0)}
//This creates an array of 100 numbers in between 0 and 200.  Don't worry about how.

for current in arrayOfNumbers {
    if current > maxNumber {
        maxNumber = current
    }
}
print(maxNumber)

print(arrayOfNumbers.sorted())


//Find the smallest value in an array of Int.  Do not use the built in min() method.
//This creates an array of 100 numbers in between 0 and 200.  Don't worry about how.

//
let arrayOfNumbers: [Int]  = (1...100).map{ _ in arc4random_uniform(200)}.map{Int($0)}
var smallestNum = arrayOfNumbers[0]
for current in arrayOfNumbers {
    if current < smallestNum {
        smallestNum = current
    }
}
print(smallestNum)


//Iterate through secondListOfNumbers, and print out all the odd numbers.
var secondListOfNumbers = [19,13,14,19,101,10000,141,404]

var secondListOfNumbers = [19,13,14,19,101,10000,141,404]

for numbers in secondListOfNumbers where numbers % 2 == 1 {
    print(numbers)
}

//Iterate through thirdListOfNumbers, and print out the sum.
var thirdListOfNumbers = [11, 26, 49, 61, 25, 40, 74, 3, 22, 23]
var sum = 0
for numbers in thirdListOfNumbers {
    sum += numbers
}
print(sum)



//Iterate through thirdListOfNumbers, and print out the sum of all the even numbers.

var thirdListOfNumbers = [11, 26, 49, 61, 25, 40, 74, 3, 22, 23]
var sum = 0

for numbers in thirdListOfNumbers where numbers % 2 == 0 {
    sum += numbers
}
print(sum)

//Append every Int that appears in both listOne and listTwo to the sharedElements array. Then print how many Ints are shared.

var listOne = [28, 64, 7, 96, 13, 32, 94, 11, 80, 68]
var listTwo = [18, 94, 48, 6, 42, 68, 79, 76, 13, 7]
var sharedElements = [Int]()

var listOne = [28, 64, 7, 96, 13, 32, 94, 11, 80, 68]
var listTwo = [18, 94, 48, 6, 42, 68, 79, 76, 13, 7]
var sharedElements = [Int]()

var listThree = listOne + listTwo
for numbers in listOne{
    for digits in listTwo {
        if numbers == digits {
            sharedElements.append(digits)
        }
    }
}
print(sharedElements.count)


//Write code such that noDupeList has all the same Ints as dupeFriendlyList, but has no more than one of each Int.

var dupeFriendlyList = [4,2,6,2,2,6,4,9,2,1]
var noDupeList: [Int] = []

for numbers in dupeFriendlyList {
    if !noDupeList.contains(numbers) {
        noDupeList += [numbers]
    }
    
}
print(noDupeList)

//Find the second smallest number in an Array of Ints

 

let arrayOfNumbers: [Int]  = (1...100).map{ _ in arc4random_uniform(200)}.map{Int($0)}





