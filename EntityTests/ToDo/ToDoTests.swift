//
//  ToDoTests.swift
//  EntityTests
//
//  Created by ashizawa.naoya on 2022/09/15.
//

import XCTest
import Entity

class ToDoTests: XCTestCase {
    
    func testCreate() {
        let expectText = "expect text"
        
        let todo = ToDo(expectText)
        XCTAssertEqual(todo, expectText)
    }
}
