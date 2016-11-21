//  Sandbox.swift

import Foundation

/**

 * Write your functions here!

 */  
func stringForDeliLine(_ StrArr:[String])->String{
    var out:String = "The line is:\n"

    if StrArr.isEmpty{
        return "The line is currently empty."
    }
    
    for (idx,name) in StrArr.enumerated(){
        
        if idx == StrArr.count - 1{
            out.append("\(idx+1). \(name)")
        }else{
            out.append("\(idx+1). \(name)\n")
        }
        
    }
    return out
    
}

func addName(_ name:String,_ toDeliLine:[String])->[String]{
    var line = toDeliLine
    line.append(name)
    print("Welcome \(name). Your number is \(line.count)")
    return line
}

func serveNextCustomerInDeliLine(_ deliLine:[String])->[String]{
    var line = deliLine
    if !line.isEmpty{
        line.removeFirst()
        print("next customer:\(line[0])")
    }
    return line
}
