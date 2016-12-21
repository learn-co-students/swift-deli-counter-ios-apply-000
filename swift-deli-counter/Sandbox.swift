//  Sandbox.swift

import Foundation




/**

 * Write your functions here!

 */



func stringForDeliLine(_ newDeliLine: ([String])) -> String{
    var deliLineList = ""
    if newDeliLine.isEmpty {
        deliLineList = "The line is currently empty."
    } else {
        for (index, name) in newDeliLine.enumerated(){
            deliLineList += "\(index+1). \(name)\n"
            
        }
        
    }
    
    return deliLineList
}

func addName(_ name: String, toDeliLine: [String]) -> [String]{
    
    var longerDeliLine = toDeliLine
    longerDeliLine.append(name)
    let deliLength = longerDeliLine.count
    
    print ("Hello, \(name)! You are number \(deliLength) in line!")
    
    return longerDeliLine
}

func serveNextCustomerInDeliLine(_ currentDeliLine: [String]) -> [String] {
    var shorterDeliLine = currentDeliLine
    
    if currentDeliLine.isEmpty{
        print("The deli line is empty!")
    }   else {
    shorterDeliLine.removeFirst()
    print("\(shorterDeliLine[0])! It's your turn!")
    }
    
    
    
    return shorterDeliLine
}
