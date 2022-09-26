//
//  UserDefaultsKeysTests.swift
//  RepositoryTests
//
//  Created by 葦沢尚也 on 2022/09/17.
//

import XCTest
@testable import Repository

class UserDefaultsKeysTests: XCTestCase {

    func testUserDefaultsKeys() throws {
        let key = AppUserDefaultsKeys.todo
        XCTAssertEqual(key.keyValue, "todo_value_key")
    }
}
