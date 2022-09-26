//
//  ToDoUserDefaults.swift
//  Repository
//
//  Created by 葦沢尚也 on 2022/09/16.
//

import Foundation
import EasyUserDefaults

/// ToDoUserDefaults is a protocol for saving ToDo objects.
public protocol ToDoUserDefaults: EasyUserDefaults where Value == String {}

public extension ToDoUserDefaults {
    static var key: UserDefaultsKeys {
        AppUserDefaultsKeys.todo
    }
}
