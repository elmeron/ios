//
//  ElmeronTests.swift
//  ElmeronTests
//
//  Created by Albin Log on 2015-08-28.
//  Copyright (c) 2015 Elmeron. All rights reserved.
//

import UIKit
import XCTest

class ElmeronTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }
    
    func testServerCommunication() {
        // Ett enkelt test som skickar hälsningsfrasen "ELM" och förväntar sig "ERON" tillbaka som svar
        
        let server = Server()
        
        XCTAssert(server.SendTest("ELM") == "ERON", "Inga problem")
        XCTAssert(server.SendTest("APA") == "", "Inte heller något problem")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
