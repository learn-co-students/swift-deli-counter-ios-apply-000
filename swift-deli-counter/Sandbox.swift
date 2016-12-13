//  Sandbox.swift

import Foundation

func stringForDeliLine(peopleInLine:[String]) -> String{
    var rollCall = ("")
    if peopleInLine.count == 0{
        rollCall = ("The line is currently empty.")
    } else {
        rollCall = ("The line is:\n")
        for(index, person) in peopleInLine.enumerate(){
            rollCall = rollCall + "\(index + 1). \(person)\n"
        }
    }
    return rollCall
}




func addName(name: String, toDeliLine: [String]) -> [String] {
    var deliLine = toDeliLine
    deliLine.append(name)
    print("Welcome to Katz's Deli \(name), your place in line is \(deliLine.count).")
    return deliLine
}



func serveNextCustomerInDeliLine(standingLine: [String]) -> [String]{
    var movingLine = standingLine
    if movingLine.count > 0 {
        movingLine.removeFirst()
        print("Next!")
    }
    return movingLine
}



