//: Playground - noun: a place where people can play

import Cocoa
//rewrite map it needs to work for double
//map transforms every element in your array and puts it in a new array
//inputs
//arr: [Double]
//closure: (Double) -> Double
//Output
//[Double]

//reimplementing map q 2a
func myMap(arr: [Double], closure: (Double) -> Double) -> [Double] {
    var finalArr = [Double]()
    for element in arr {
        //transform the element
        let transformedElement = closure(element)
        //append the transformed element to finalArr
        finalArr.append(transformedElement)
    }
    return finalArr
}
let inputArr: [Double] = [1,3,4,5]
let doubler = ({(num: Double) -> Double in
    return num * 2
})
myMap(arr: inputArr, closure: doubler)
inputArr.map(doubler)

//reduce only returns 1 thing
//closures are ref types
//inputs arr: [Double]
//starting val :Double
//closure: (Double(result), Double(val as we iterate)) -> Double
//output
//Double
func myReduce(arr: [Double], closure: (Double, Double) -> Double, startingVal: Double) -> Double {
    var accumulatedVal = startingVal
    for element in arr {
        accumulatedVal = closure(accumulatedVal, element)
    }
    
    return accumulatedVal
}
inputArr.reduce(0, +)
let adder = {(a: Double, b:Double) -> Double in
    return a + b
}
myReduce(arr: inputArr, closure: adder, startingVal: 0)






