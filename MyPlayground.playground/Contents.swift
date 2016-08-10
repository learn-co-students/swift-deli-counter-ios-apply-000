//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

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

var currentLine = ["Al", "Chris", "Zach"]

var printMe = stringForDeliLine(currentLine)

print(printMe)

func serveNextCustomerInDeliLine(currentLine: [String]) -> [String] {
    var deliLineMinusOne = currentLine
    if !deliLineMinusOne.isEmpty {
        let nextCustomer = deliLineMinusOne.removeFirst()
        print("Hey, \(nextCustomer)! Welcome to the Deli! What can we get started for you?")
    }
    return deliLineMinusOne
}

let expected = ["Joe", "Tim", "Jim", "Tom", "Mark"]


serveNextCustomerInDeliLine(expected)