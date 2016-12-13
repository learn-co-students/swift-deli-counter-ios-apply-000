//  Sandbox.swift

import Foundation



//stringForDeliLine(_:)

func stringForDeliLine(names: [String]) -> String {
    var finalString: String
    var listArray: [String] = ["The line is:\n"]
    if names.isEmpty {
        return "The line is currently empty."
    } else {
        for (index, _) in names.enumerate() {
            listArray.append("\(index + 1). \(names[index])\n")
        }
        finalString = listArray.joinWithSeparator("")
        return finalString
    }
}

//addName(_:toDeliLine:)

func addName(name: String, toDeliLine: [String]) -> [String] {
    var newDeliLine = toDeliLine
    newDeliLine.append(name)
    print("Welcome, \(name).  You are in position #\(newDeliLine.indexOf(name)! + 1).")
    return newDeliLine
}


//serveNextCustomerInDeliLine(_:)

func serveNextCustomerInDeliLine(deliLine: [String]) -> [String] {
    if deliLine.isEmpty {
        return deliLine
    } else {
        var newDeliLine = deliLine
        newDeliLine.removeFirst()
        print("\(newDeliLine[0])! you are next in line.")
        return newDeliLine
    }
}