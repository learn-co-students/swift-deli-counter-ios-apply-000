//
//  DeliCounterTests.swift
//  swift-deli-counter
//
//  Created by James Campagno on 11/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import XCTest
@testable import swift_deli_counter


class DeliCounterTests: XCTestCase {
    
    var empty: [String] = []
    var precollege: [String] = []
    var ios: [String] = []

    
    override func setUp() {
        super.setUp()
     
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testStringForDeliLine() {
        
        XCTAssertEqual(stringForDeliLine(empty), "The line is currently empty.")
        
        let expected = "The line is:\n1. Victoria\n2. Danny\n3. Lyel"
        XCTAssertEqual(stringForDeliLine(precollege), expected)
        
        let expectediOS = "The line is:\n1. Joe\n2. Tim\n3. Jim\n4. Tom"
        XCTAssertEqual(stringForDeliLine(ios), expectediOS)
        
    }
    
    func testAddNameToDeliLine() {
        
        let result = addName("Al", toDeliLine: empty)
        let expected = ["Al"]
        XCTAssertEqual(result, expected)
        
        let result2 = addName("Dan", toDeliLine: precollege)
        let expected2 = ["Victoria", "Danny", "Lyel", "Dan"]
        XCTAssertEqual(result2, expected2)

        let result3 = addName("Mark", toDeliLine: ios)
        let expected3 = ["Joe", "Tim", "Jim", "Tom", "Mark"]
        XCTAssertEqual(result3, expected3)

    }
    
    func testServeNextCustomer() {
        
        let result = serveNextCustomerInDeliLine(empty)
        XCTAssertEqual(result.isEmpty, true)
        
        let result2 = serveNextCustomerInDeliLine(precollege)
        let expected2 = ["Danny", "Lyel"]
        XCTAssertEqual(result2, expected2)
        
        
        let result3 = serveNextCustomerInDeliLine(ios)
        let expected3 = ["Tim", "Jim", "Tom"]
        XCTAssertEqual(result3, expected3)
        
    }
    
}
