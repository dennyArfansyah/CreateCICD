//
//  CreateCICDTests.swift
//  CreateCICDTests
//
//  Created by Denny Arfansyah on 22/12/24.
//

import XCTest
@testable import CreateCICD

final class CreateCICDTests: XCTestCase {
    
    func test_Aritmathic() {
        let sum = 1+1
        XCTAssertEqual(sum, 2)
    }
    
    func test_stringEqualizer() {
        let item1 = "Hello World"
        XCTAssertNotEqual(item1, "Its me Denny")
    }
}
