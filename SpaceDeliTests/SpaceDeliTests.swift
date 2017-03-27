//
//  SpaceDeliTests.swift
//  SpaceDeliTests
//
//  Created by Jim Campagno on 1/4/17.
//  Copyright © 2017 Jim Campagno. All rights reserved.
//

import XCTest
@testable import SpaceDeli

class SpaceDeliTests: XCTestCase {
    
    let deli = SpaceDeli()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
}

// MARK: - Question #1
extension SpaceDeliTests {
    
    func testDescription() {
        deli.line = ["Jim", "Johann", "Joe"]
        let result = deli.description()
        let expectedResult = "The line is:\n1. Jim\n2. Johann\n3. Joe"
        XCTAssertEqual(result, expectedResult)
    }
    
    func testEmptyDescription() {
        deli.line = []
        let result = deli.description()
        let expectedResult = "The line is currently empty."
        XCTAssertEqual(result, expectedResult)
    }
    
}
//
//// MARK: - Question #2
extension SpaceDeliTests {
    
    func testAddName() {
        _ = deli.add(name: "Adam")
        let result = deli.add(name: "Jessica")
        let expectedResult = "Welcome Jessica. You're number 2 in line."
        XCTAssertEqual(result, expectedResult)
    }
    
    func testAddNameFirstPerson() {
        let result = deli.add(name: "Avi")
        let expectedResult = "Welcome Avi. You're first in line!"
        XCTAssertEqual(result, expectedResult)
    }
    

    
}
//
//// MARK: - Question #3
extension SpaceDeliTests {
    
    func testServeNextCustomer() {
        deli.line = ["Isaac", "Neil", "Carl"]
        let result = deli.serveNextCustomer()
        let expectedResult = "Isaac is ready to be served, please come forward."
        XCTAssertEqual(result, expectedResult, "Isaac is first in line, he should be the one served.")
        XCTAssertFalse(deli.line.contains("Isaac"), "Isaac was served, he should no longer be in line.")
    }
    
    func testServeNextCustomerEmpty() {
        deli.line.removeAll()
        let result = deli.serveNextCustomer()
        let expectedResult = "The line is empty."
        XCTAssertEqual(result, expectedResult)
    }
    
}
