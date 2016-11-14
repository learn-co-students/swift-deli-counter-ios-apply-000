//  Sandbox.swift

import Foundation

/**

 * Write your functions here!

 */


func stringForDeliLine(_ line: Array<String>) -> String {
    print("The line is:")
    if line.isEmpty {
        return "The line is currently empty."
    }
    for x in 0..<line.count {
        print("\(x+1). \(line[x])")
    }
    return String(describing: line)
}

func addName(_ name: String, toDeliLine: Array<String>) -> Array<String> {
    var toDeliLine = toDeliLine
    toDeliLine.append(name)
    print ("Welcome to the deli \(name), your spot in line is \(toDeliLine.count))")
    return toDeliLine
}

func servNextCustomerInDeliLine(_ line: Array<String>) -> Array<String> {
    var line = line
    if line.isEmpty {
        return line
    }
    print("\(line[0]) it is now your turn.")
    line.removeFirst()
    return line
}
