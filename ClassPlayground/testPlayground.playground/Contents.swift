import UIKit
//closure

//closure syntax

let add = {(x: Int, y: Int) -> Int in
    return x + y
}

print(add(5, 2))

let multiplication = {(a: Int, b: Int) -> Int in
    return a * b
}
print(multiplication(2,5))
let division = {(c: Int, d: Int) -> Int in
    return c / d
}
print(division(10,5))

func combine(x: Int, y:Int) -> Int {
    let mod = x % y
    return mod
}
combine(x: 10,y: 5)

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
var reversedArr = [String]()
//reversing array with a for loop
for i in 0...names.count-1{
    reversedArr.append(names[(names.count-1) - i])
}


print(reversedArr)

print(reversedArr)
func backward(s1: String, s2: String) -> Bool {
    return s1 < s2
}
var reversedNames = names.sorted(by: backward)
print("reversed names : \(reversedNames)")
let sortedNames = names.sorted{($0 < $1)}
print(sortedNames)
let numbers = [32, 21, 33, 2, 66, 88, 43, 902, 73, 27, 905]
let words = ["One", "two", "Buckle", "my", "shoe"]
//Sort numbers ascending.
let ascendingNums = numbers.sorted{(num1:Int, num2: Int) -> Bool in
    return num1 < num2
}
print(ascendingNums)
//Sort words, descending case-insensitive.
let descendingWords = words.sorted{(w1: String, w2:String) -> Bool in
    let caseInsensitive = w1.lowercased() > w2.lowercased()
    return caseInsensitive
}
print(descendingWords)
//Sort words by the length of each element.
//Sort numbers ascending, even numbers first, odd numbers second. Output will be [2, 32, 66, 88, 902, 21, 27, 33, 43, 73, 905]


