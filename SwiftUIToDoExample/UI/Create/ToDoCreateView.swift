//
//  ToDoCreateView.swift
//  SwiftUIToDoExample
//
//  Created by 葦沢尚也 on 2022/09/15.
//

import SwiftUI
import Repository

struct ToDoCreateView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ToDoInputView(buttonLabelText: "保存") { inputText in
            save(text: inputText)
        }
        .navigationTitle("作成")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    func save(text: String) {
        ToDoRepository.save(value: text)
        dismiss()
    }
}

struct ToDoCreateView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoCreateView()
    }
}
