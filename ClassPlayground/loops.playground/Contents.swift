//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
import UIKit

let closedRange = 1...5
let openRange = 1..<5

let doubleRange = 1.0..<5.0

//for each i in 1 to 11 print i
//Open Range (prints 1- 10)
for i in 1..<11 {
    print(i)
}
//Closed Range (print 1 to 11)
for i in 1...11 {
    print(i)
}

pow(2, 0)
//count down from 10 to 1
//in ranges number on left has to be smaller than number on the right
//for i in (1...10).reversed() {
//    print(i)
//}

//where
//count only even numbers between one and ten
//for i in 1..<10 where i % 2 == 0 {
//    print(i)
//}

//Print 1st 5 elements in the five times table
//var multiplesOf5 = 1
//for i in 1...5 {
//    multiplesOf5 *= 5
//    print("Multiple of 5 at iteration \(i) is \(multiplesOf5)")
//}
//
//for i in 1..<6 {
//    print("5 *\(i) = \(5 * 1)")
//}
//Use _ if not using the variable
//print hi there! 6x
for _ in 0..<6 {
    print("Hi there!")
}

//when iterating through empty arrays
for _ in 0..<0 {
}

//what is the value of 3 to the 10th pwr
//let base = 3
//var product = 10
//var answer = 1
//for i in 1...product {
//    product *= base
//    print(product)
//}
var threes = 1
for _ in 1...10 {
    threes *= 3
    print(threes)
}
pow(3.0, 10.0)

let myTuple = (4,2,5)
//cannot iterate over a tuple


//using where
//for i in 1...100 where i % 10 == 5 {
//    print(i)
//}
//
//for i in 1...100 {
//    if i % 10 == 5{
//        print(i)
//    }
//}
// use ctrl + i to fix indentation errors


//i = 0 // initialize
//
//while i < 10 { // condition
//    print (i)  // body code
//
//    i += 1    // increment iterator
//}

/*
 var inputIsValid = false
 while !inputIsValid {
 //get validInput
 // inputIsValid = true
 }
 */



//var doubleNumber: Double = 20
//
// while doubleNumber > 0.0 {
// doubleNumber /= 2
// print(doubleNumber)
// }


//repeat whiles, always executes at least once
//var i = 0
//repeat {
//    print(i)
//    i += 1
//} while i < 10



//continue brings you back up to the beginning of closest loop, not the if condition
//for i in 0..<10 {
//    if 1 > 4 && i < 8{
//        continue
//    }
//    print(i)
//}
//
//var shields = 5
//var blastersOverheating = false
//var blasterFireCount = 0
//


//sleep(5) means pause(seconds)
/*
while shields > 0 {
    
    if blastersOverheating {
        print("Blasters are overheated!  Cooldown initiated.")
        sleep(5)
        print("Blasters ready to fire")
        sleep(1)
        blastersOverheating = false
        blasterFireCount = 0
    }
    
    if blasterFireCount > 100 {
        blastersOverheating = true
        continue
    }
    
    // Fire blasters!
    print("Fire blasters!")
    
    // note the version in the book used ++
    blasterFireCount += 1
}
*/

//break makes the code stop, a hard stop even tho it says to iterate till 100
//
//for i in 0..<100 {
//    if i ==6 {
//        break
//
//    }
//    print(i)
//}

//var shields = 5
//var blastersOverheating = false
//var blasterFireCount = 0
//var spaceDemonsDestroyed = 0
//
//while shields > 0 {
//
//    if spaceDemonsDestroyed == 500 {
//        print("You beat the game!")
//        break
//    }
//
//    if blastersOverheating {
//        print("Blasters are overheated! Cooldown initiated.")
//        sleep(5)
//        print("Blasters ready to fire")
//        sleep(1)
//        blastersOverheating = false
//        blasterFireCount = 0
//        continue
//    }
//
//    if blasterFireCount > 100 {
//        blastersOverheating = true
//        continue
//    }
//
//    // Fire blasters!
//    print("Fire blasters!")
//    blasterFireCount += 1
//    spaceDemonsDestroyed += 1
//}

//print("hey","there", separator:":::", terminator:"ENDLINE")

//nested loops
//for i in 1...5 {
//    for j in 1...5 {
//        print("\(i),\(j)", separator: ",", terminator: " ")
//    }
//    print("")
//}


//outer: for i in 1...5 {
//    print("i\(i) :", terminator: " ")
//
//    inner: for j in 1...5 {
//        if i == j {
//            // uncomment for "outer"
//            print("")
//
//            // toggle outer on and off
//            continue outer
//        }
//        print("j\(j)", terminator: " ")
//    }
//    print("")
//}

//each time the outer loop runs, the inner loop runs its designated 10 times, outer loop runs 10x so 10 x 10 = runs 100 times
//for _ in 1...10{
//    for _in 1...10{
//        print("Nesting!")
//    }
//}
//

//Check if number is positive
let number = 434
let isPositive = number > 0

///print 1 to 150
for i in 1...150 {
    print(i)
}






