//: Playground - noun: a place where people can play

import UIKit

//#Week 1 - Class 2
//##Lab Assignment
//* Write a function that takes in an array of strings, checks if array contains “Earth”, if not, adds it otherwise returns

var arrayExample = ["Mars", "Venus", "Pluto"]

func arraySearch (anyArray: [String])
{
    let findEarth = anyArray.filter { (planet) -> Bool in
        return planet == "Earth"
    }
    if findEarth.isEmpty {
        arrayExample.append("Earth")
    }
}

arraySearch(arrayExample)


//* Use **reduce** to create single string from the above array. [“Venus”, “Earth”] would produce “Venus, Earth”

let planetString = arrayExample.reduce("") { (result, planet) -> String in
    return result + " " + planet + ","
}


//* Declare and implement a dictionary that can contain as values Strings, Ints, etc

var dictionary = [String:Any]()




//* Declare a dictionary of string values. Declare a function that takes in a string and searches dictionary for it. Use **filter**

var dictionary2 = ["one": "uno", "two": "dos", "three": "tres", "four": "quatro", "five": "cinco"]


func stringSearch (input: String) -> [(String, String)]
{
    let searchDictionary2 = dictionary2.filter { (key: String, value: String) -> Bool in
        return input == value
    }
    return searchDictionary2
}

stringSearch("cinco")

//    * Write examples for **union, intersect, subtract, exclusive** Or set operations

var set1: Set = [0, 1, 6, 7, 8, 9]
var set2: Set = [0, 1, 2, 3, 4, 5]
let union = set1.union(set2)
let intersect = set1.intersect(set2)
let subtract = set1.subtract(set2)
let exclusiveOr = set1.exclusiveOr(set2)

//Write a function that counts repeating words and prints out the count of each

var setA = ["red", "green", "red", "blue", "purple"]
var set12 = [0, 0, 1, 6, 7, 8, 9]
var setB = Set(setA)

func countRepeatingWord (array: [String])
{
    var dictionaryCounter = [String: Int]()
    let arrayUnique = Set(array)
    for value in arrayUnique {
        dictionaryCounter[value] = 0
    }
    for value1 in array {
        dictionaryCounter[value1]? += 1
    }
    print(dictionaryCounter)
}

countRepeatingWord(setA)

//Add two numbers without using “+”

let number1 = 7
var number2 = 8

for _ in 1...number1
{
    number2 += 1
    
}


