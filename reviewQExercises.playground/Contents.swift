//: Playground - noun: a place where people can play

import Cocoa

//Given the following exert from the declaration of independance, find the most frequent word that is longer than 5 characters.
//
//- use components(separatedBy:) to break up the string into an array.
//
//    - use CharacterSet.punctuationCharacters in union with any other characters you don't want in your array, like spaces and new lines.
//


let declarationOfIndependance = """
When in the Course of human events, it becomes necessary for one people to dissolve the
political bands which have connected them with another, and to assume among the powers of the
earth, the separate and equal station to which the Laws of Nature and of Nature's God entitle
them, a decent respect to the opinions of mankind requires that they should declare the causes
which impel them to the separation.
We hold these truths to be self-evident, that all men are created equal, that they are endowed by
their Creator with certain unalienable Rights, that among these are Life, Liberty and the pursuit
of Happiness. That to secure these rights, Governments are instituted among Men, deriving
their just powers from the consent of the governed, That whenever any Form of Government
becomes destructive of these ends, it is the Right of the People to alter or to abolish it, and to
institute new Government, laying its foundation on such principles and organizing its powers in
such form, as to them shall seem most likely to effect their Safety and Happiness. Prudence,
indeed, will dictate that Governments long established should not be changed for light and
transient causes; and accordingly all experience hath shewn, that mankind are more disposed to
suffer, while evils are sufferable, than to right themselves by abolishing the forms to which they
are accustomed. But when a long train of abuses and usurpations, pursuing invariably the same
Object evinces a design to reduce them under absolute Despotism, it is their right, it is their duty,
to throw off such Government, and to provide new Guards for their future security. Such has
been the patient sufferance of these Colonies; and such is now the necessity which constrains
them to alter their former Systems of Government. The history of the present King of Great
Britain is a history of repeated injuries and usurpations, all having in direct object the
establishment of an absolute Tyranny over these States. To prove this, let Facts be submitted to a
candid world.
"""

var charMin5 = [String]()
//break up string into sep strings in an arr
//longer than 5 chars x
//most freq word

var storage = declarationOfIndependance.components(separatedBy: CharacterSet.punctuationCharacters).joined()//is now an arr of strings
var chars = Array(storage)
var new = chars.map{$0 == " " ? "!" : $0}
var new2 = String(new.map({$0 == "\n" ? "!" : $0}))
var sepStorage = new2.components(separatedBy: "!")
var lowercasedArr = [String]()
for i in sepStorage {
    lowercasedArr.append(i.lowercased())
}

for i in lowercasedArr where i.count > 5  {
 charMin5.append(String(i))
}
print(charMin5)
//frequency,create a dict, , word = key  , count =


var deposits: [String: [Double]] = [
    "Williams" : [300.65, 270.45, 24.70, 52.00, 99.99],
    "Cooper" : [200.56, 55.00, 600.78, 305.15, 410.76, 35.00],
    "Davies" : [400.98, 56.98, 300.00],
    "Clark" : [555.23, 45.67, 99.95, 80.76, 56.99, 46.50, 265.70],
    "Johnson" : [12.56, 300.00, 640.50, 255.60, 26.88]
]
var biggest = (name: "", amountDeposited: 0.0)
for (person, depositArr) in deposits {
    var totalAmountDeposited = 0.0
    for deposit in depositArr {
        totalAmountDeposited += deposit
    }
    if totalAmountDeposited > biggest.amountDeposited {
        biggest = (person, totalAmountDeposited)
    }
}
var stolenCentsArr = [Double]()
for (person, depositArr) in deposits {
    for (index, deposit) in depositArr.enumerated() {
        let remainingMoney = Double(Int(deposit))
        let stolenCents = deposit - Double(Int(deposit))
        var newArr = deposits[person]!
        newArr[index] = remainingMoney
        deposits[person] = newArr
        stolenCentsArr.append(stolenCents)
    }
}
Double("34.23")

stolenCentsArr = stolenCentsArr.map{Double(String(format: "%.2f", ceil($0*100)/100))!}
deposits
stolenCentsArr.reduce(0, +)


for (index, element) in [9,2,4,1,5].enumerated() {
    print(index, element)
}
//#1 - Review for Unit 1 exam:


var myArray = declarationOfIndependance.components(separatedBy: CharacterSet.punctuationCharacters).joined() //break up string into array
var myArray2 = myArray.replacingOccurrences(of: "\n", with: " ").components(separatedBy: " ")
var myDict = [String:Int]() //Blank Dictionary

for word in myArray2 {
    if myDict[word] == nil && word.count > 5 { //doesnt exists in myDict
        myDict[word] = 1
    } else if word.count > 5 {
        myDict[word]! += 1
    }
}

var mostFrequent = ("",0)
for (key, value) in myDict {
    if value > mostFrequent.1  {
        mostFrequent = (key, value)
    }
}
print(mostFrequent)


//Identify if there are 3 integers in the following array that sum to 10. If so, print them. If there are multiple triplets, print all possible triplets.

var tripleSumArr = [-20,-14, -8,-5,-3,-2,1,2,3,4,9,15,20,30]
for intOneIndex in 0..<tripleSumArr.count {
    for intTwoIndex in (intOneIndex + 1)..<tripleSumArr.count {
        for intThreeIndex in (intTwoIndex + 1)..<tripleSumArr.count {
            if tripleSumArr[intOneIndex] + tripleSumArr[intTwoIndex] + tripleSumArr[intThreeIndex] == 10 {
                print(tripleSumArr[intOneIndex],tripleSumArr[intTwoIndex] , tripleSumArr[intThreeIndex])
            }
        }
    }
}

/*
 Given an array of Characters, create a String ignoring any uppercase Characters and spaces.  Then uppercase every other character of the String.
 
 
 
 Input: let arr: [Character] = ["a", "p","P","l","E"," ","S","a","u","C,"e"]
 
 Output: "ApLaUe"
 
 */
var finalStr = ""
let arr: [Character] = ["a", "p","P","l","E"," ","S","a","u","C","e"]
for c in arr where c != " " {
    let charAsString = String(c)
    let uppercasedCharAsString = String(c).uppercased()
    if charAsString != uppercasedCharAsString {
        finalStr.append(c)
    }
}
var alternatingUppercasedStr = ""
for (index, c) in finalStr.enumerated() {
    if index % 2 == 0 {
        alternatingUppercasedStr.append(String(c).uppercased())
    } else {
        alternatingUppercasedStr.append(c)
    }
}
alternatingUppercasedStr
