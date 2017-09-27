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









