//
//  DeliCounterTests.swift
//  swift-deli-counter
//
//  Created by James Campagno on 11/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import XCTest

func stringForDeliLine(stringArray: [String]) -> String {
    var result: String = ""
    if (stringArray.isEmpty) {
        result += "The line is currently empty."
    } else {
        result += "The line is:"
        for (index, element) in stringArray.enumerated() {
            let position = String(index + 1)
            result += "\n"
            result += position + ". "
            result += element
        }
    }
    return result
}

func addName(name: String, toDeliLine: [String]) -> [String] {
    let cursor = toDeliLine.count + 1
    var mutableLine = toDeliLine
    
    mutableLine.append(name)
    print("Hello " + name + " : your spot in line is " + String(cursor))
    
    return mutableLine
}

func serveNextCustomerInDeliLine(customers: [String]) -> [String] {
    let updatedCustomerList = customers.dropFirst()
    
    if let nextInLine = updatedCustomerList.first {
        print(nextInLine + ": It is now your turn")
    }
    
    return Array(updatedCustomerList)
}

class DeliCounterTests: XCTestCase {
    
    var empty: [String] = []
    var precollege: [String] = ["Victoria", "Danny", "Lyel"]
    var ios: [String] = ["Joe", "Tim", "Jim", "Tom"]

    
    override func setUp() {
        super.setUp()
     
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testStringForDeliLine() {

        XCTAssertEqual(stringForDeliLine(stringArray: empty), "The line is currently empty.")
        
        let expected = "The line is:\n1. Victoria\n2. Danny\n3. Lyel"
        XCTAssertEqual(stringForDeliLine(stringArray: precollege), expected)
        
        let expectediOS = "The line is:\n1. Joe\n2. Tim\n3. Jim\n4. Tom"
        XCTAssertEqual(stringForDeliLine(stringArray: ios), expectediOS)
        
    }
    
    func testAddNameToDeliLine() {
        
        let result = addName(name: "Al", toDeliLine: empty)
        let expected = ["Al"]
        XCTAssertEqual(result, expected)
        
        let result2 = addName(name: "Dan", toDeliLine: precollege)
        let expected2 = ["Victoria", "Danny", "Lyel", "Dan"]
        XCTAssertEqual(result2, expected2)

        let result3 = addName(name: "Mark", toDeliLine: ios)
        let expected3 = ["Joe", "Tim", "Jim", "Tom", "Mark"]
        XCTAssertEqual(result3, expected3)

    }
    
    func testServeNextCustomer() {
        
        let result = serveNextCustomerInDeliLine(customers: empty)
        XCTAssertEqual(result.isEmpty, true)
        
        let result2 = serveNextCustomerInDeliLine(customers: precollege)
        let expected2 = ["Danny", "Lyel"]
        XCTAssertEqual(result2, expected2)
        
        
        let result3 = serveNextCustomerInDeliLine(customers: ios)
        let expected3 = ["Tim", "Jim", "Tom"]
        XCTAssertEqual(result3, expected3)
        
    }
    
}
