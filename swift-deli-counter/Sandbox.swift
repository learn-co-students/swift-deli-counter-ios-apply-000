//  Sandbox.swift

import Foundation

/**

 * Write your functions here!

 */

func stringForDeliLine(stringArray: [String]) -> String {
    var result: String = ""
    if (stringArray.isEmpty) {
        result += "The line is currently empty."
    } else {
        result += "The line is:"
        for (index, element) in stringArray.enumerated() {
            let position = String(index + 1)
            result += "\n"
            result += position + ". "
            result += element
        }
    }
    return result
}

func addName(name: String, toDeliLine: [String]) -> [String] {
    let cursor = toDeliLine.count + 1
    var mutableLine = toDeliLine
    
    mutableLine.append(name)
    print("Hello " + name + " : your spot in line is " + String(cursor))
    
    return mutableLine
}

func serveNextCustomerInDeliLine(customers: [String]) -> [String] {
    let updatedCustomerList = customers.dropFirst()
    
    if let nextInLine = updatedCustomerList.first {
        print(nextInLine + ": It is now your turn")
    }
    
    return Array(updatedCustomerList)
}
