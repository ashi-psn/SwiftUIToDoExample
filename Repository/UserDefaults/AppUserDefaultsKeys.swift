//
//  AppUserDefaultsKeys.swift
//  Repository
//
//  Created by 葦沢尚也 on 2022/09/16.
//

import Foundation
import EasyUserDefaults

/// AppUserDefaultsKeys
enum AppUserDefaultsKeys: UserDefaultsKeys {
    
    /// ToDo value key
    case todo
    
    var keyValue: String {
        switch self {
        case .todo:
            return "todo_value_key"
        }
    }
}
