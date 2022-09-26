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
    
    ///変更、削除時に使用する配列のindex
    let index: Int
    
    /// 表示するToDoオブジェクト
    let todo: ToDo
    
    /// チェックボックスの判定変数
    @State var isChecked: Bool = false
    
    /// ToDo更新時に発火するイベント
    var onEdited: (() -> Void)? = nil
    
    /// 削除時に更新するためのコールバック
    let onDeleted: () -> Void
    
    private var backgroundColor: Color {
        return isChecked ? .gray : .white
    }
    
    var body: some View {
        Section {
            NavigationLink(destination: ToDoEditView(index: index, todo: todo, onEdited: {
                onEdited?()
            })
            ) {
                HStack {
                    //チェックボックス
                    Button {
                        onChangeCheckBox()
                    } label: {
                        let imageName = isChecked ? "checkmark.square.fill" : "square"
                        Image(systemName: imageName)
                    }
                    
                    //BorderlessButtonStyleかPlainButtonStyleをしないとList全体に判定が当たってします
                    .buttonStyle(BorderlessButtonStyle())
                    //todo表示
                    Text(todo)
                    //スペース
                    Spacer()
                    //削除ボタン
                    Button(action: {
                        delete()
                        onDeleted()
                    }) {
                        Image(systemName: "delete.left")
                            .foregroundColor(.red)
                    }
                    .buttonStyle(BorderlessButtonStyle())
                }
            }.listRowBackground(backgroundColor)
        }
        header: {
            Text(String(index))
        }
    }
    
    func onChangeCheckBox() {
        isChecked = !isChecked
    }
    
    func delete() {
        ToDoRepository.delete(at: index)
    }
}

struct ToDoListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListItemView(index: 0, todo: ToDo("hello")) {
            print("on deleted")
        }
    }
}
