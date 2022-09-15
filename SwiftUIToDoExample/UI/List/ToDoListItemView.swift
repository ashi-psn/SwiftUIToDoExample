//
//  ToDoListItemView.swift
//  SwiftUIToDoExample
//
//  Created by ashizawa.naoya on 2022/09/15.
//

import SwiftUI
import Repository
import Entity

struct ToDoListItemView: View {
    
    let todo: ToDo
    
    var body: some View {
        Section {
            Text(todo.text)
        } header: {
            Text(todo.id.uuidString)
        }
    }
}

struct ToDoListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListItemView(
            todo: ToDo(
                id: UUID(uuidString: "section uuid")!,
                text: ""
            )
        )
    }
}
