//
//  ToDo.swift
//  Entity
//
//  Created by ashizawa.naoya on 2022/09/15.
//

import Foundation

public struct ToDo {
    public let id: UUID
    public let text: String
    
    public init(text: String) {
        let id = UUID()
        self.init(id: id, text: text)
    }
    
    public init(id: UUID, text: String) {
        self.id = id
        self.text = text
    }
}
