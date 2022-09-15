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
        let expectUUID = UUID()
        let expectText = "expect text"
        
        let todo = ToDo(
            id: expectUUID,
            text: expectText
        )
        
        XCTAssertEqual(todo.id, expectUUID)
        XCTAssertEqual(todo.text, expectText)
    }
}
