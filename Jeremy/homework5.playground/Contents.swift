//: Playground - noun: a place where people can play

import UIKit

//Find palandromes in an array of string
func palindrome (input: [String]) -> [String]? {
    var newArray = [String]()
    for element in input {
        let reverse = String(element.characters.reverse())
        if reverse == element {
            newArray.append(element)
        }
    }
    return newArray
}

var exampleArray = ["dog", "mom", "racecar"]
var examplePalindrome = palindrome(exampleArray)
examplePalindrome

//Base 10 -> Base 16

var dictionary1: [Int: String] = [10: "A", 11: "B", 12: "C", 13: "D", 14: "E", 15: "F"]

func base16 (number: Int) -> String {
    var inputValue = number
    var remaindersInverse = [String]()
    var modulo = (inputValue % 16)
    
    while( inputValue > 16) {
        inputValue = Int(inputValue / 16)
        remaindersInverse.insert(String(modulo), atIndex: 0)
        modulo = (inputValue % 16)
    }
    remaindersInverse.insert(String(inputValue), atIndex: 0)
    for (index, element) in remaindersInverse.enumerate() {
        if (Int(element)) > 9 {
            let moduloText = dictionary1[Int(element)!]!
            remaindersInverse[index] = moduloText
        }
    }
    return remaindersInverse.reduce("",combine:{$0 + $1})
}
var example = base16(63933)
print(example)

//BONUS: Roman numerals -> Base 10

