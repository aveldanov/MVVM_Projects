//
//  PracticeAppUITests.swift
//  PracticeAppUITests
//
//  Created by Veldanov, Anton on 4/18/21.
//

import XCTest

class PracticeAppUITests: XCTestCase {

    override func setUpWithError() throws {

        continueAfterFailure = false

    }

    override func tearDownWithError() throws {

    }

    func testWhenItem_IsClicked_PageOpens() throws {
        let app = XCUIApplication()
        app.launch()
        
        let myTable = app.tables.matching(identifier: "table")
        let cell = myTable.cells.element(matching: .cell, identifier: "cell0")
            cell.tap()
        sleep(5)
        
        XCTAssert(app.otherElements["detailedView"].exists)
        sleep(5)

    }
    
    
    
    

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
