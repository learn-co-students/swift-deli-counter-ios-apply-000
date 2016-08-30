//  Sandbox.swift

import Foundation

/**

 * Write your functions here!

 */
/**
 
 * Takes array. Returns "The line is currently empty." if array is empty. Returns "The line is:" with array values 
 on subsequent lines
 
 */
func stringForDeliLine(stringArray: [String]) -> String {
    var finalLine = ""
    if stringArray.isEmpty {
        return("The line is currently empty.")
    } else {
        var lineString = ""
        for (index, name) in stringArray.enumerate() {
            let nameValue = ("\(index + 1). \(name)")
            lineString += nameValue + "\n"
        }
        finalLine = lineString
    }
    return("The line is:" + "\n" + finalLine)
}

/**
  
 * Add's name to array, sends them welcome message, and returns new appended array
 
 */

func addName(name: String,toDeliLine: [String]) -> [String] {
    var newLine = toDeliLine
    newLine.append(name)
    print("Welcome, \(name)! Your place in line is \(newLine.count)" )
    return newLine
}
/**
 
 * Moves next customer up in line by removing 0 index in array. Handles error message if array is empty
 
 */

func serveNextCustomerInDeliLine(deliLine: [String]) -> [String] {
    var newLine = deliLine
    if newLine.isEmpty {
        print("Line is empty")
    } else {
        newLine.removeFirst()
        print("\(newLine[0]), it is your turn")
    }
    return newLine
}








