//
//  ToDoRepositoryError.swift
//  RepositoryTests
//
//  Created by ashizawa.naoya on 2022/09/15.
//

import XCTest
@testable import Repository

class ToDoRepositoryErrorTests: XCTestCase {
    
    func testLocalizedString() {
        let error = ToDoRepositoryError.keyisalreadyexists
        XCTAssertEqual(error.localizedDescription, "既に存在しているキー名です")
    }
}
