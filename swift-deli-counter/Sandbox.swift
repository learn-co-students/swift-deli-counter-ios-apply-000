//  Sandbox.swift

import Foundation

func stringForDeliLine(_ names: [String]) -> String {
    var result = String()
    if names.isEmpty {
        return "The line is currently empty."
    } else {
        result.append("The line is:")
        for (index, element) in names.enumerated() {
            result.append("\n\(index + 1). \(element)")
        }
    }
    return result
}

func addName(_ name: String, toDeliLine line: [String]) -> [String] {
    var result = line
    result.append(name)
    print("Welcome \(name). Your place in line is \(result.count)")
    return result
}

func serveNextCustomerInDeliLine(_ line: [String]) -> [String] {
    var result = line
    guard result.count != 0 else {
        return []
    }
    result.removeFirst()
    print("\(result.first) it is your turn.")
    return result
}
