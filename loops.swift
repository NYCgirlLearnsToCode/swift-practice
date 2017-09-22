var str = "Hello, playground"
let names = ["Anna", "Alex", "Brian", "Jack"]
for nam in names {
    print("Hello, \(nam)!")
}

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}
let fastFood = ["coke": 1, "sprite":2]
for (soda, number) in fastFood{
    print("\(soda) is \(number)")
}
var myFirstInt:Int = 0
for i in 1...5{
    myFirstInt += 1
    myFirstInt
    print(myFirstInt)
    print("myFirstInt equals \(myFirstInt) at iteration \(i)")
}

var mySecondInt: Int = 1
for i in 1...3{
	mySecondInt += 1
	print(mySecondInt)
	print("mySecondInt equals \(mySecondInt) at iteration \(i)")
}