//
//  ToDoRepository.swift
//  Repository
//
//  Created by ashizawa.naoya on 2022/09/15.
//

import Foundation
import Entity

public class ToDoRepository {
    
    public static let shared = ToDoRepository()
    
    let userdefault: UserDefaults
    
    private let todoValueKey = "todo_value_key"
    
    private init(){
        self.userdefault = UserDefaults.standard
    }
    
    @discardableResult
    public func save(text: String) -> ToDo {
        let uuid = UUID()
        let todo = ToDo(id: uuid, text: text)
        return save(todo: todo)
    }
    
    @discardableResult
    public func save(texts: [String]) -> [ToDo] {
        let todos = texts.map{ ToDo(text: $0) }
        return save(todos: todos)
    }
    
    @discardableResult
    public func save(todo: ToDo) -> ToDo {
        userdefault.set(todo.text, forKey: todo.id.uuidString)
        return todo
    }
    
    @discardableResult
    public func save(todos: [ToDo]) -> [ToDo] {
        return todos.map{ save(todo: $0) }
    }
    
    public func getAll() ->[ToDo] {
        let keys = userdefault.dictionaryRepresentation()
        return []
    }
    
    public func get(key: String){}
    
    public func deleteAll() {
        let domain = Bundle.main.bundleIdentifier
        UserDefaults.standard.removePersistentDomain(forName: domain!)
    }
}
