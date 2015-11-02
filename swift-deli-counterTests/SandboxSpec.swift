//  SandboxSpec.swift

import Quick
import Nimble
@testable import swift_deli_counter

class SandboxSpec: QuickSpec {
    override func spec() {
        let deliLine = ["Ada","Joe"]
        describe("takeANumber") {
            it("Adds a person") {
                expect(takeANumber(deliLine, name: "Chris")).to(equal(["Ada","Joe","Chris"]))
            }
        }
        
        describe("nowServing") {
            it("Removes the person") {
                expect(nowServing(deliLine).count).to(equal(1))
            }
        }
        
        describe("printLine") {
            it("Prints correctly") {
                expect(printLine(deliLine)).to(equal("The line is currently: 1. Ada 2. Joe"))
            }
        }
    }
}
