//Without using string interpolation, print out a string that combines myGreeting and myName.
var myGreeting = "Hi"
var myName = "Lisa"
print(myGreeting + " " + myName)


//Write code that prints out all the numbers from 1 to 10 as a single string. (Hint: the String() function can convert an Int to a String)
var numStr = ""
for i in 1...10 {
numStr += String(i)
}
print(numStr)

//Write code that prints out all the even numbers from 5 to 51 as a single string.
var num2 = ""
for i in 5...51 {
    if i % 2 == 0 {
        num2 += String(i)
    }
}
print(num2)

var numStr2 = ""
for i in 1...60 where i % 10 == 4 {
	numStr2 += String(i)
}
print numStr2

//Print each character in the string "Hello world!"
var helloStr = "Hello world!"
for c in helloStr{
    print(c)
}

// Initialize a String with a character. Show that it is a Character, and not another String, you're using to initialize it.
var char: Character = "a"