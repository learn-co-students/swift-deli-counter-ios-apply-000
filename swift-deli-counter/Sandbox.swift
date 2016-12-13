//  Sandbox.swift

import Foundation

func stringForDeliLine(_ line: [String]) -> String {
    var lineString = ""
    if line.isEmpty {
        return "The line is currently empty."
    } else {
        for (index, name) in line.enumerated() {
            lineString += "\(index + 1). \(name)\n"
        }
        return "The line is:\n\(lineString)"
    }
}

func addName(_ name: String, toDeliLine deliLine: [String]) -> [String] {
    var newDeliLine = deliLine
    newDeliLine.append(name)
    print("Welcome \(name), you are customer number \(newDeliLine.count) today.")
    return newDeliLine
}

func serveNextCustomerInDeliLine(_ deliLine: [String]) -> [String] {
    var newDeliLine = deliLine
    if !deliLine.isEmpty {
        print("Order up for \(deliLine[0])!")
        newDeliLine.removeFirst()
    }
    return newDeliLine
}
