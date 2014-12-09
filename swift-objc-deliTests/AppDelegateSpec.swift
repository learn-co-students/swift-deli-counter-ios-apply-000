import Quick
import Nimble
import swift_objc_deli

class AppDelegateSpec: QuickSpec {
    override func spec() {
        let appDelegate : AppDelegate = AppDelegate()
        let deliLine = ["Ada","Joe"]
        describe("takeANumber") {
            it("Adds a person") {
                expect(appDelegate.takeANumber(deliLine, name: "Chris")).to(equal(["Ada","Joe","Chris"]))
            }
        }

        describe("nowServing") {
            it("Removes the person") {
                expect(appDelegate.nowServing(deliLine).count).to(equal(1))
            }
        }

        describe("printLine") {
            it("Prints correctly") {
                expect(appDelegate.printLine(deliLine)).to(equal("The line is currently: 1. Ada 2. Joe"))
            }
        }
    }
}
