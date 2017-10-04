//
//  Unit_TestingTests.swift
//  Unit TestingTests
//
//  Created by abuzeid ibarhim on 10/4/17.
//  Copyright © 2017 abuzeid ibarhim. All rights reserved.
//

import XCTest
import  UIKit
@testable import Unit_Testing

class Unit_TestingTests: XCTestCase {

    override func setUp() {
        super.setUp()
        print(#function)
        
        
    }
    
    override func tearDown() {
        super.tearDown()
        print(#function)
        

    }
    
    func testdExample() {
        print("????test example..>>>")
        XCTAssertEqual("abuzeid", "abuzeid")
    }
    func testCountOfTableRow(){

        
//    vc?.addItem(sender: self)
//    XCTAssertEqual(vc?.count, vc?.tableview.visibleCells.count)
        
    
    
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
