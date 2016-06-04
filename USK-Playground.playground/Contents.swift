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

arrInts.sort()


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



























































