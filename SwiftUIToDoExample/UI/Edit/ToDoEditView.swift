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
    let index: Int
    let todo: ToDo
    
    @Environment(\.dismiss) var dismiss
    
    var onEdited: (() -> Void)? = nil
    
    var body: some View {
        ToDoInputView(buttonLabelText: "更新", defaultText: todo) { inputText in
            update(text: inputText)
        }
        .background(Color.white)
        .navigationTitle("更新")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    private func update(text: String) {
        do {
            try ToDoRepository.update(value: text, in: index)
            onEdited?()
            dismiss()
        } catch {
            fatalError(error.localizedDescription)
        }
    }
}

struct ToDoEditView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoEditView(index: 0, todo: ToDo("hello"))
    }
}
