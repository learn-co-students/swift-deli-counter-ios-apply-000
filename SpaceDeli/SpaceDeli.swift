//
//  SpaceDeli.swift
//  SpaceDeli
//
//  Created by Jim Campagno on 1/4/17.
//  Copyright © 2017 Jim Campagno. All rights reserved.
//

import Foundation

class SpaceDeli {
    
    var line: [String] = []
    
    
    
  func description() -> String {

    var lineString = "The line is:"

    if line.count > 0 {
      for (index, name) in line.enumerated() {
        lineString.append("\n\(index+1). \(name)")

      }

      return lineString
    } else {
      return "The line is currently empty."
    }

  }
 
    
    
    
    
  func add(name : String) -> String {
    line.append(name)
    if line.count == 1 {
      return "Welcome \(name). You're first in line!"

    } else {

      let int = line.index(of: name)!+1
      return "Welcome \(name). You're number \(int) in line."
    }
  }


  func serveNextCustomer() -> String {
    if line.isEmpty {
      return "The line is empty."
    } else {
      let string = line[0]
      line.remove(at: 0)
      return "\(string) is ready to be served, please come forward."
    }
  }

    
    
    
    
    
    // Question #3

    
    
    
    
}
