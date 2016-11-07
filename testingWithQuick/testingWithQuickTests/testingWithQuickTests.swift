//
//  testingWithQuickTests.swift
//  testingWithQuickTests
//
//  Created by Bao Tran on 8/24/16.
//  Copyright © 2016 Bao Tran. All rights reserved.
//

import XCTest
@testable import testingWithQuick

class testingWithQuickTests: XCTestCase {

    let testNumberClass = NumberClass()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testEvenToOdd() {
        
        let testArrayOfNumbers = [1, 3, 5]
        
        let untestedArray = testNumberClass.evenToOdd(testNumberClass.arrayOfNumbers)
        
        print("\nuntestedArray is:\(untestedArray)\ntestArrayOfnumber is:\(testArrayOfNumbers)")
        
        XCTAssert(untestedArray == testArrayOfNumbers)
        
    }
    
}
