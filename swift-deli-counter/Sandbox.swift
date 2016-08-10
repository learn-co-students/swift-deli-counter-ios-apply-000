//  Sandbox.swift

import Foundation

/**

 * Write your functions here!

 */

func stringForDeliLine(line: [String]) -> String {
    var deliLineStatus: String = "The line is:"
    if line.isEmpty {
        deliLineStatus = "The line is currently empty."
    } else {
        for (index, name) in line.enumerate() {
            deliLineStatus = deliLineStatus + ("\n\(index + 1). \(name)")
        }
    }
    return deliLineStatus
}

func addName(name: String, toDeliLine: [String]) -> [String] {
    var newDeliLine = toDeliLine
    newDeliLine.append(name)
    print("Hey, \(name)! You are #\(newDeliLine.count) in line!")
    return newDeliLine
}

func serveNextCustomerInDeliLine(currentLine: [String]) -> [String] {
    var deliLineMinusOne = currentLine
    if !deliLineMinusOne.isEmpty {
        let nextCustomer = deliLineMinusOne.removeFirst()
        print("Hey, \(nextCustomer)! Welcome to the Deli! What can we get started for you?")
    } else {
        print("The line is currently empty.")
    }
    return deliLineMinusOne
}