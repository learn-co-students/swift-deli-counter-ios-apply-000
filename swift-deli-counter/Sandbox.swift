//  Sandbox.swift

import Foundation



 func stringForDeliLine(deliLine:Array<String>) ->Array<String> {
 var currentLine: [String] = ["The line is:"]
 var nameEntry = ""
 if deliLine.isEmpty == true{
 nameEntry = "The line is currently empty."
 currentLine[0] = nameEntry
 } else {
 for (index,_) in deliLine.enumerate() {
 nameEntry="\(index+1). \(deliLine[index])"
 currentLine.append(nameEntry)
 }
 }
 return currentLine
 }

 func addName(name:String,toDeliLine:Array<String>) ->Array<String> {
 var newDeliLine = toDeliLine
 newDeliLine.append(name)
 print("You are \(newDeliLine.count)th in line")
 return toDeliLine
 }
 
 func serveNextCustomerInDeliLine(currentLine:Array<String>) -> Array<String> {
 var newLine = currentLine
 if currentLine.isEmpty == false {
 newLine.removeFirst()
 print("next customer")
 } else {
 print("line's empty")
 }
 return newLine
 }
 

