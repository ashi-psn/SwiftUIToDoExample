//
//  ToDoInputView.swift
//  SwiftUIToDoExample
//
//  Created by 葦沢尚也 on 2022/09/17.
//

import SwiftUI

struct ToDoInputView: View {
    
    let buttonLabelText: String
    
    let onclick: ((_ inputText: String) -> Void)?
    
    @State var text: String
    
    init(buttonLabelText: String, defaultText: String = "", onclick: ((_ inputText: String) -> Void)?) {
        self.buttonLabelText = buttonLabelText
        self.text = defaultText
        self.onclick = onclick
    }
    
    var body: some View {
        VStack {
            TextField("ToDo", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(16.0)
            Button {
                onclick?(text)
            } label: {
                Text(buttonLabelText)
            }
            Spacer()
        }
    }
}

struct ToDoInputView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoInputView(buttonLabelText: "テストボタンラベル", defaultText: "デフォルトテキスト") { inputText in
            print("on click")
        }
    }
}
