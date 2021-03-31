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
//       sut = Calculator()
         calculator = Calculator()
    }

    override func tearDownWithError() throws {
//        sut = nil
        calculator = nil
    }

    func test_subTwoNumbers(){
        let result = calculator.subtract(5,8)
        XCTAssertEqual(result, 3)
    }
    
    
    func test_addTwoNumbers(){
        let result = calculator.add(3,8)
        XCTAssertEqual(result, 5)
    }
    
    func test_multiplyTwoNumbers(){
        let result = calculator.mutiply(3, 5)
        
    }

}
