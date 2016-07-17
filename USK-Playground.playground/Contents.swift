//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print("Printing on the console")

//Working with variables and variable types

//Strings
let name : String = "Soaurabh Kakkar" //it's a good habit to define your variable's type but not necessary

print("My name is \(name)")

print("Hello " + name + ".") //string concat with plus

//Integers(Whole Numbers)
var int : Int = 9

int = int * 2     //int is 18

int = int / 4    // rounds down to 4

var anotherInt = 7

print(int * anotherInt)

print("The value of int is \(int)")

//Doubles(numbers with decimals)
let number:Double = 4.53 //decimal numbers default to Double type

print(number * 7)

print(number * Double(int)) //NOTE-Arithmatic of only same type of variables is possible

//Booleans(true or false)
var isMale:Bool = true //Bool allows true/false, named after George Boole

//Working with Arrays And Dictionaries

//Arrays
var array:[String] = ["My", "Name", "Is", "Soaurabh", "Kakkar"]

var arrInts : [Int] = [17, 25, 13, 47]

var arr = [1, 2, 3, 4, "Soaurabh"] // it will become array of NSObject in this case, but swift array has the same type of variables.

print(arrInts[0]) //swift array is zero based
print(arrInts.count) //Number of items in the array

arrInts.append(56) // Add the element at the end of the array

arrInts.removeAtIndex(3) //Removes the element at index, do shifting and returns the removed element

//arrInts.removeAtIndex(4) - Error, Trying to remove an item which is out of bound

print(arrInts)

arrInts.sort() // To do a numerical or alphabetical sort, use this default method


//Dictionaries

var dict:[String:String] = ["Name" : "Soaurabh", "Computer":"something to play Call of Duty on", "Coffee" : "Best Drink Ever"] //key-value pair

if let valOfDict = dict["Coffee"] { // Note- Dict[key] returns optionals
    print(valOfDict)
}

print(dict.count) //Number of key-value pairs

dict["pen"] = "Write it with pen" //Adding values to dictionary

dict.removeValueForKey("Computer") //Returns the value which gets removed

var menu = ["pizza": 10.99, "ice cream": 4.99, "salad": 7.99]

var totalCost:Double = 0.0;
for (key, value) in menu { //Iterating a dictionary
    totalCost += value
}

//print("The total cost of the tree items is \(menu["pizza"]! + menu["ice cream"]! + menu["salad"]!)") - Not recommended to force unwrap variables

print("The total cost of the tree items is \(totalCost)")



//If And Else Statements
let age = 20

if age >= 18 {
    
    print("you can play!")
    
} else {
    
    print("Sorry, you're too young")
}


let myName = "Kirsten"

if myName == "SK" {
    
    print("Hi \(myName), you can play")
    
} else {
    
    print("Sorry, \(myName), you can't play")
}

if myName == "Kirsten" && age >= 18 {
    
    print("You can play!")
}

if myName == "Kirsten" || myName == "SK" {
    
    print("Welcome, \(myName)")
}

let isGenderMale = true

if isGenderMale {
    
    print("you are a man!!!")
}

//Check if the userName and password are correct
let username = "soaurabhk"

let password = "myPass123"

if username == "soaurabhk" && password == "myPass123" {
    
    print("you're In!")
    
} else if username != "soaurabhk" && password != "myPass123" {
    
    print("Both your username and password are wrong")
    
} else if username == "soaurabhk" {
    
    print("your password is wrong")
    
} else {
    
    print("your username is wrong")
    
}

//For Loops

//Swift 2.2:
// new swift style works well
for i in 1 ..< 10 {
    
    print("i is \(i)")
}

for i in 1...10 {
    print("I'm number \(i)")
}

//For decrement index
for index in 10.stride(to: 0, by: -1) {
    print(index)
}

//Or you can use reverse() like

for index in (0 ..< 10).reverse() {
    print(index)
}

//for float type  (there is no need to define any types to index)

for index in 0.stride(to: 0.6, by: 0.1) {
    print(index)  //0.0 ,0.1, 0.2,0.3,0.4,0.5
}

//Swift 3.0:
//From Swift3.0, The stride(to:by:) method on Strideable has been replaced with a free function, stride(from:to:by:)
/*

 for i in stride(from: 0, to: 10, by: 1){
    print(i)
 }
 
*/

//Single line commenting

/*
 This is 
 a multi-line
 comment
 */

var myArr = [8, 3 , 9, 91]

for x in myArr {
    print(x)
    //x = x + 1 -> Error, because x is let, which is assigned value of arr elements in turn.
}

for (index, value) in myArr.enumerate() {
    
    print(value);
    
    myArr[index] += 1;
}

for i in 0 ..< myArr.count {
    
    print(myArr[i])
    
    myArr[i] += 1;
}

print(myArr)


//While Loops

var yourNum = 1

while yourNum <= 10 {
    
    print(yourNum * 5)
    
    yourNum += 1
}

var myArray = [8, 3, 1, 9, 4, 5, 7]

var loopCounter = 0

while loopCounter < myArray.count {
    
    print(myArray[loopCounter])
    
    loopCounter += 1
}

//Prime number 

func isNumPrime(let num:Int) -> Bool {
    
    if num < 2 {
        return false
    }
    
    var isPrime : Bool = true;
    let sqrtNum : Int = Int(sqrt(Double(num)));
    
    for i in 2...(sqrtNum + 1) {
        if num % i == 0  && num != i {
            isPrime = false
            break;
        }
    }
    return isPrime;
}

//Advanced string manipulation

var newString = str + " Whatsup"

//split a string into individual characters
for char in newString.characters {
    print(char)
}

var newTypeString = NSString(string: newString)

newTypeString.substringToIndex(5)

newTypeString.substringFromIndex(6)

newTypeString.substringWithRange(NSRange(location:8, length: 5))

if newTypeString.containsString("What") {
    print("Yes, it's here")
}

newTypeString.componentsSeparatedByString(" ") //equivalent of split in JS or explode in php

newTypeString.uppercaseString //email-address input

newTypeString.lowercaseString //email-address input

var origTypeString:String = String(newTypeString)








