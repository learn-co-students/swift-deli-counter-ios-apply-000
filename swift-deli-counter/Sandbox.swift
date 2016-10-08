//  Sandbox.swift

import Foundation
import Nimble
import QuickLook



 func stringForDeliLine(line: [String]) -> String  {
 var order = ""
 var newLine = ""
 
 if line.isEmpty {
 print("The line is currently empty.")
 } else {
 print("The line is:")
 for (index, person) in line.enumerated() {
 
 order = ("\(index + 1).\(person)\n")
 newLine.append(order)
 }
 }
 
 return newLine
 }

 
 
 func addName(name: String, deliLine: [String]) -> [String] {
 
 var newLine: [String] = deliLine
 newLine.append(name)
 
 print("Welcome, you are #\(newLine.count) in line.")
 return newLine
 
 
 }
 
 func serveNextCustomerInDeliLine(nameList:[String]?) -> [String] {
    var newList:[String]
    
    if var array = nameList {
 
        newList = array.removeFirst()
        
        print("Your turn is next :)")
    }
    
 return newList
 }
 



