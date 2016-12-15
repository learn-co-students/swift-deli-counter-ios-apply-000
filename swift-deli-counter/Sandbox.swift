//  Sandbox.swift

import Foundation

/**

 * Write your functions here!

 */

func stringForDeliLine(names: [String]) -> String {
    var result: String = ""
    
    if (names.isEmpty) {
        result += "The line is currently empty."
    } else {
        result += "The line is:"
        for (index, name) in names.enumerated() { //call .enumaterated to get index value in loop
            result += "\n"
            result += String(index + 1) + ". "
            result += String(name)
        }

    }
    return result
}

func addName(name: String, toDeliLine deliLine:[String]) -> [String] {
    var newDeliLine = deliLine
    
    newDeliLine.append(name)
    let cursor = newDeliLine.index(of: name)! + 1
    print(name + ", your spot in line is : " + String(cursor))
    
    return newDeliLine
}

func serveNextCustomerInDeliLine(deliLine: [String]) -> [String] {
    let newDeliLine = Array(deliLine.dropFirst()) //.dropFirst returns ArraySlice. Must pass to Array constructor to create Array
    
    if let nextInLine = newDeliLine.first { //.first declares optional return. Must guard against this.
        print(nextInLine + ": You are the next customer")
    }
    return newDeliLine
}
