//: Playground - noun: a place where people can play

import UIKit

/*
let myArr = [1,5,2,3,194,-32]
var total = [Int]()
//print out all numbers in array
for num in myArr {
    print(num)
}
//print out length of array
print(myArr.count)
//last element
print(myArr.last)
print(myArr.first)//1st element

for sums in myArr {
    total.append(sums)
}
print(total)

//multidimensional arrays
let theMatrix = [[1, 2, 3],
                 [4, 5, 6],
                 [7, 8, 9]]

for row in theMatrix {
    print(row)
}

let rowZero = theMatrix[0]
let rowZeroColumnOne = rowZero[1]

let rowOneColumnZero = theMatrix[1][0]
//print 8
print(theMatrix[2][1])
//print 3
print(theMatrix[0][2])
//print 5
print(theMatrix[1][1])


let jerseyNums = [[23,52,51],[22,54,15]]
//print out all jerseys for team one


for teamIndex in 0..<jerseyNums.count {
    print("Jerseys for team \(teamIndex + 1)")
    for jersey in jerseyNums[teamIndex] {
        print(jerseyNums)
    }
}
*/
//We can use the Array Constructor methods to create new instances of Arrays.

//Array(repeating: <Value>, count: <Int>)
//let newArr = Array(repeating: 0, count: 5)
//Practice:
//
//Make an array containing 200 copies of the number 9
//Make an array containing 20 copies of the string "Hello"
//Make an array of 30 optional Ints set to nil

//Make a 2-dimensional 5 x 5 array of Ints all set to 0
//let fiveByfiveArr0 = Array(repeating:[0,0,0,0,0], count:5)
//print(fiveByfiveArr0)

//let newArray = Array(repeating: newArr, count:5)
//print(newArray)
/*
let newArr = Array(repeating: [0, 0, 0, 0, 0], count: 5)
print(newArr)

//FOR LOOP
var emptyArray = [[Int]]()
for _ in 1...5 {
    emptyArray.append([0, 0, 0, 0, 0])
}
print(emptyArray)

//Given a square array, print out the diff of the sum of each diagonal
var theMatrix = [[1, 2, 3],
                 [4, 5, 6],
                 [7, 8, 9]]
var firstdiag0 = theMatrix[0][0]
var firstdiag1 = theMatrix[1][1]
var firstdiag2 = theMatrix[2][2]
var firstdiagTotal = firstdiag0 + firstdiag1 + firstdiag2
print(firstdiagTotal)

var seconddiag0 = theMatrix[0][2]
var seconddiag1 = theMatrix[1][1]
var seconddiag2 = theMatrix[2][0]
var seconddiagTotal = seconddiag0 + seconddiag1 + seconddiag2
print(seconddiagTotal)

print(firstdiagTotal - seconddiagTotal)


//Print out each element in myMatrix

var myMatrix = [[10, 14, 12],
                [91, 1, 9],
                [31, 3, 21]]



for num in myMatrix {
    for arr in num{
      print(arr)
    }
}
*/
//Print out the sum of the diagonals of myMatrix.
var myMatrix = [[10, 14, 12],
                [91, 1, 9],
                [31, 3, 21]]
var diagonalSum1 = 0
for rowIndex in 0..<myMatrix.count {
    for columnIndex in 0..<myMatrix.count where rowIndex == columnIndex {// if index is the same, add to diagonal sum
        diagonalSum1 += myMatrix[rowIndex][columnIndex]
    }
}
print(diagonalSum1)

var diagonalSum2 = 0
var diagonalSum2b = 0
for rowIndex in 0..<myMatrix.count {
    diagonalSum2 += rowIndex + 1
    print(diagonalSum2)

}




