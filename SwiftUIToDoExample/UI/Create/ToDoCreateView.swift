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
    
    @State private var text: String = ""
    
    private let repository = ToDoRepository.shared
    
    var body: some View {
            VStack {
                TextField("ToDo", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(16.0)
                Button {
                    save(text: text)
                } label: {
                    Text("保存")
                }
                Spacer()
            }
            .navigationTitle("作成")
            .navigationBarTitleDisplayMode(.inline)
    }
    
    func save(text: String) {
        repository.save(text: text)
        dismiss()
    }
}

struct ToDoCreateView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoCreateView()
    }
}
