//
//  MVVMUnitTestingTests.swift
//  MVVMUnitTestingTests
//
//  Created by Veldanov, Anton on 3/10/21.
//

import XCTest
@testable import MVVMUnitTesting

class MVVMUnitTestingTests: XCTestCase {
//    var sut: Calculator!
    override func setUpWithError() throws {
//       sut = Calculator()
    }

    override func tearDownWithError() throws {
//        sut = nil
    }

    
    func test_addTwoNumbers(){
        var calculator = Calculator()
        let result = calculator.add(2,3)
        
        XCTAssertEqual(result, 6)
    }

}
