//  Sandbox.swift

import Foundation

/**

 * Write your functions here!

 */


func stringForDeliLine(forDeliLine: [String]) -> String {
    
    if forDeliLine.isEmpty {
        return "The line is currently empty."
    } else {
        var numerationList = "The line is:"
        for (index, step) in forDeliLine.enumerate() {
            numerationList += ("\n\(index + 1). \(step)")
        }
        return numerationList
    }
    
}


func addName(name: (String),toDeliLine deliLine: [String]) -> [String] {
    var newDeliLine = deliLine
    newDeliLine.append(name)
    print("Wlcome \(name)! You are a \(newDeliLine.count).")
    return newDeliLine
}

func serveNextCustomerInDeliLine(guestList: [String]) -> [String] {
    var newGuestList = guestList
    
    if guestList.count > 0 {
        let customer = newGuestList.removeFirst()
        print("Next custome \(customer)")
    }
    
    return newGuestList
}
