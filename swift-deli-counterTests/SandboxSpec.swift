//  SandboxSpec.swift

import Foundation
import Quick
import NImble

@testable import swift_deli_counter

class SandboxSpec: QuickSpec {
    override func spec() {
        var empty: [String] = []
        var precollege: [String] = []
        var ios: [String] = []
        
        beforeEach {
            empty = []
            precollege = ["Victoria", "Danny", "Lyel"]
            ios = ["Joe", "Tim", "Jim", "Tom"]
        }
        
        describe("stringForDeliLine(_:)") {
            it("should return a string saying the line is empty when the argument array is empty") {
                
                expect(stringForDeliLine(empty)).to(match("The line is currently empty."))
            }
            
            it("should return a string describing the line with three names") {
                let expected = "The line is:\n1. Victoria\n2. Danny\n3. Lyel"
                
                expect(stringForDeliLine(precollege)).to(match(expected))
            }
            
            it("should return a string describing the line with four names") {
                let expected = "The line is:\n1. Joe\n2. Tim\n3. Jim\n4. Tom"
                
                expect(stringForDeliLine(ios)).to(match(expected))
            }
        }
        
        describe("addName(_:toDeliLine:)") {
            it("adds the name 'Al' to an empty array") {
                let result = addName("Al", toDeliLine: empty)
                let expected = ["Al"]
                
                expect(result).to(equal(expected))
            }
            
            it("adds the name 'Dan' to the end of the 'precollege' array") {
                let result = addName("Dan", toDeliLine: precollege)
                let expected = ["Victoria", "Danny", "Lyel", "Dan"]
                
                expect(result).to(equal(expected))
            }
            
            it("adds the name 'Mark' to the end of the 'ios' array") {
                let result = addName("Mark", toDeliLine: ios)
                let expected = ["Joe", "Tim", "Jim", "Tom", "Mark"]
                
                expect(result).to(equal(expected))
            }
        }
        
        describe("serveNextCustomerInDeliLine(_:)") {
            it("should return an empty array when an empty array is submitted") {
                let result = serveNextCustomerInDeliLine(empty)
                
                expect(result).to(beEmpty())
            }
            
            it("should remove 'Victoria' from the 'precollege' array") {
                let result = serveNextCustomerInDeliLine(precollege)
                let expected = ["Danny", "Lyel"]
                    
                expect(result).to(equal(expected))
            }
            
            it("should remove 'Joe' from the 'ios' array") {
                let result = serveNextCustomerInDeliLine(ios)
                let expected = ["Tim", "Jim", "Tom"]
                
                expect(result).to(equal(expected))
            }
        }
    }
}
