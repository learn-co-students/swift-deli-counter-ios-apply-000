
import Foundation


func stringForDeliLine(deliLine: [String]) -> String {
    var container = ""
    if deliLine.count == 0  {
        return "The line is currently empty."
    } else {
        
        for (index, customer) in deliLine.enumerated() {
            //        print("\(index + 1). \(customer)")
            container += ("\n\(index + 1). \(customer)")
        }
        print ("The line is:\(container)")
        return "The line is:\(container)"
    }
}


func addName(name: String, deliLine: [String]) -> [String] {
        var newDeliLine = deliLine
        newDeliLine.append(name)
        print("\(name) is in place \(newDeliLine.count) of the line")
    
    return newDeliLine

}


func serveNextCustomerInDeliLine(deliLine: [String]) -> [String] {
    var alteredArray = deliLine
    if alteredArray == [] {
        print("The array is empty")
    } else {
    alteredArray.removeFirst()
    print("\(alteredArray.first) is the next customer.")
    //same thing as alteredArray[0]
    }
    return alteredArray
}


