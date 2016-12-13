//  Sandbox.swift

import Foundation

func stringForDeliLine(groupOfPeople:[String]) -> String {
    var str = ""
    var finalStr = ""
    if !groupOfPeople.isEmpty {
        for (index,name) in groupOfPeople.enumerate() {
            str += ("\(index + 1). \(name)\n")
        }
        finalStr = "The line is:\n" + str
        //let expected = "The line is:\n1. Victoria\n2. Danny\n3. Lyel"
    }
    else {
        finalStr = "The line is currently empty."
    }
    return finalStr
}

func addName(name:String,toDeliLine:[String]) -> [String] {
    var deliLineNew = [String]()
    if toDeliLine.isEmpty {
        deliLineNew.append(name)
    }
    else {
        for names in toDeliLine {
            deliLineNew.append(names)
        }
        
        deliLineNew.append(name)
        print("Welcome " + "\(name) " + "your place in line is " + "\(deliLineNew.count)")
    }
    return deliLineNew
}

func serveNextCustomerInDeliLine(line:[String]) -> [String] {
    var lineNew:[String] = []
    if !line.isEmpty {
        for name in line {
            lineNew.append(name)
        }
        lineNew.removeFirst()
        print("\(lineNew[0]) " + "it is your turn!")
    }
    return lineNew
}




