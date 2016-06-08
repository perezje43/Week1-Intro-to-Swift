//: Playground - noun: a place where people can play

import UIKit

// Write a function that takes in a string, checks if it can be converted to a number and if possible, returns a number


func stringToNumber(string: String) -> Int?
{
    return Int(string)
}




// Write a function that takes in a tuple (code, message) and returns a string by using interpolation

func tupleInterpolation (myTuple: (code: Int, message: String)) -> String
{
    return "Sorry! \(myTuple.code): \(myTuple.message)"
}

tupleInterpolation((404, "Not found"))




// Write a function that take in a string, and returns a message: “String contains n characters”

func countChars (string: String) -> String
{
    return "String \"\(string)\" contains \(string.characters.count) characters."
}



// Write a function that takes in a string and reverses it. Use a simple for loop

func stringReverse (string: String) -> String
{
    var newString = ""
    for character in string.characters {
        newString = "\(character)" + newString
    }
    return newString
}



//    * **Bonus:**
// Declare a variable that’s function. Implement function to take in a string (name) and return greeting message.

func greetingMessageFunction (string: String) -> String  {
    return "Hello \(string)!"
}

var greetingMessage: (string: String) -> String = greetingMessageFunction

greetingMessage(string: "Jeremy")
