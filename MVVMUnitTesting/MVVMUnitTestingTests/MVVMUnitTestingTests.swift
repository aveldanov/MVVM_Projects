//
//  MVVMUnitTestingTests.swift
//  MVVMUnitTestingTests
//
//  Created by Veldanov, Anton on 3/10/21.
//

import XCTest

class MVVMUnitTestingTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    func test_addTwoNumbers(){
        let calculator = Calculator()
        let result = calculator.add(2,3)
        
        XCTAssertEqual(result, 5)
    }

}
