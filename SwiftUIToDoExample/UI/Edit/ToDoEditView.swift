//
//  ToDoEditView.swift
//  SwiftUIToDoExample
//
//  Created by 葦沢尚也 on 2022/09/16.
//

import SwiftUI
import Repository
import Entity

struct ToDoEditView: View {
    
    let todo: ToDo
    
    var body: some View {
        Text(todo.id.uuidString)
    }
}

struct ToDoEditView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoEditView(todo: ToDo(text: "hello"))
    }
}
