//
//  Unit_TestingUITests.swift
//  Unit TestingUITests
//
//  Created by abuzeid ibarhim on 10/4/17.
//  Copyright © 2017 abuzeid ibarhim. All rights reserved.
//

import XCTest
import UIKit

@testable import Unit_Testing



class Unit_TestingUITests: XCTestCase {

    override func setUp() {
        super.setUp()
        print(#function)
        
        
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testAddFunction() {
        
//       let  vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "home") as! ViewController

        let app = XCUIApplication()
        XCTAssertEqual(app.tables.cells.count , 10)
//        app.buttons["Calculate"].tap()
        app.navigationBars.buttons["Add"].tap()
//        XCTAssertEqual(app.tables.element(boundBy: 0).staticTexts.count , 2)
        XCTAssertEqual(app.tables.cells.count , 11)

//        vc.addItem(sender: self)
//        XCTAssertEqual(vc.count, vc.tableview.visibleCells.count)
        
    }
    
}
