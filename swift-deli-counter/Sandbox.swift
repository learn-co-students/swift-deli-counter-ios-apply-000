//  Sandbox.swift

import Foundation

/**

 * Write your functions here!

 */

// Initialized deliLineStatus string with "The line is:". Used method .isEmpty on the line array to determine if it's empty. If it's empty, set deliLineStatus to "The line is currently empty.". If it's not empty, use the .enumerate method on the line array to add the string ("\n\(index + 1). \(name)"). We use index + 1 because humans count starting from 1 and not 0. The \n writes the string on a new line.

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

// Declared a var newDeliLine because the toDelinLine is immutable. Take the String in the name argument and used .append method to add it to the new mutable array of strings we created. Printed a welcome message using the name of the customer (name) and their customer number/place in line. We determined their customer number/place in line by using the .count method on the newDeliLine array.

func addName(name: String, toDeliLine: [String]) -> [String] {
    var newDeliLine = toDeliLine
    newDeliLine.append(name)
    print("Hey, \(name)! You are #\(newDeliLine.count) in line!")
    return newDeliLine
}

// Declared a var deliLineMinusOne because the currentLine is immutable. Checked to see if deliLineMinusOne .isEmpty because we cannot .removeFirst() from an empty array. If !deliLineMinus.isEmpty, set the nextCutomer we're helping to the first person in deliLineMinus one and remove them from the array. We can do this easily by using the .removeFirst() method. Printed a message telling the nextCustomer it's their turn.

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