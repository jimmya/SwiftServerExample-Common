import XCTest
@testable import SwiftServerExample_Common

class SwiftServerExample_CommonTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(SwiftServerExample_Common().text, "Hello, World!")
    }


    static var allTests : [(String, (SwiftServerExample_CommonTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
