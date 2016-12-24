//
//  DeliCounterTests.swift
//  swift-deli-counter
//
//  Created by James Campagno on 11/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import XCTest

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
        
        XCTAssertEqual(stringForDeliLine(deliline: empty), "The line is currently empty.")
        
        let expected = "The line is:\n1. Victoria\n2. Danny\n3. Lyel"
        XCTAssertEqual(stringForDeliLine(deliline: precollege), expected)
        
        let expectediOS = "The line is:\n1. Joe\n2. Tim\n3. Jim\n4. Tom"
        XCTAssertEqual(stringForDeliLine(deliline: ios), expectediOS)
        
    }
    
    func testAddNameToDeliLine() {
        
        let result = addName(name: "Al", deliLine: empty)
        let expected = ["Al"]
        XCTAssertEqual(result, expected)
        
        let result2 = addName(name: "Dan", deliLine: precollege)
        let expected2 = ["Victoria", "Danny", "Lyel", "Dan"]
        XCTAssertEqual(result2, expected2)

        let result3 = addName(name: "Mark", deliLine: ios)
        let expected3 = ["Joe", "Tim", "Jim", "Tom", "Mark"]
        XCTAssertEqual(result3, expected3)

    }
    
    func testServeNextCustomer() {
        
        let result = serveNextCustomerInDeliLine(deliLine: empty)
        XCTAssertEqual(result.isEmpty, true)
        
        let result2 = serveNextCustomerInDeliLine(deliLine: precollege)
        let expected2 = ["Danny", "Lyel"]
        XCTAssertEqual(result2, expected2)
        
        
        let result3 = serveNextCustomerInDeliLine(deliLine: ios)
        let expected3 = ["Tim", "Jim", "Tom"]
        XCTAssertEqual(result3, expected3)
        
    }
    
    
    
}

func stringForDeliLine (deliline: [String]) -> String {
    print(deliline)
    
    if deliline.count == 0 {
        return "The line is currently empty."
    }
    var returnvalue = "The line is:"
    for i in 0 ..<  deliline.count {
        let numberinline = i + 1
        returnvalue += "\n\(numberinline). \(deliline[i])"
        print(i)
    }
    return returnvalue
    
}

func addName (name: String, deliLine: [String]) -> [String] {
    var newDeliLine = deliLine
    newDeliLine.append(name)
    print("Hi \(name) Your place in line is \(newDeliLine.count) ")
    return newDeliLine
    
}

func serveNextCustomerInDeliLine (deliLine: [String]) -> [String] {
    var newDeliLine = deliLine
    if !newDeliLine.isEmpty {
        newDeliLine.removeFirst()
    print("\(deliLine[0]), it is your turn")
    }
    return newDeliLine
    
}

