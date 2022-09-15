//
//  ToDoListView.swift
//  SwiftUIToDoExample
//
//  Created by 葦沢尚也 on 2022/09/15.
//

import SwiftUI
import Repository
import Entity

struct ToDoListView: View {
    
    var todos: [ToDo] = []
    
    var body: some View {
        List(todos, id: \.id) { todo in
            ToDoListItemView(todo: todo)
        }
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView()
    }
}
