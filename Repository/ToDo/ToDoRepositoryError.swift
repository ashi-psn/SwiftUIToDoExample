//
//  ToDoRepositoryError.swift
//  Repository
//
//  Created by ashizawa.naoya on 2022/09/15.
//

import Foundation

public enum ToDoRepositoryError: LocalizedError {
    case keyisalreadyexists
    
    var localizedDescription: String {
        switch self {
            case .keyisalreadyexists: return "既に存在しているキー名です"
        }
    }
}
