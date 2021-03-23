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
    private var calculator: Calculator!
    
    override func setUpWithError() throws {
       sut = Calculator()
         calculator = Calculator()
    }

    override func tearDownWithError() throws {
//        sut = nil
        calculator = nil
    }

    func test_subTwoNumbers(){
        let result = calculator.subtract(5,2)
        XCTAssertEqual(result, 3)
    }
    
    
    func test_addTwoNumbers(){
        let result = calculator.add(2,3)
        XCTAssertEqual(result, 5)
    }

}
