//
//  ToDoListView.swift
//  SwiftUIToDoExample
//
//  Created by 葦沢尚也 on 2022/09/15.
//

import SwiftUI
import Repository
import Entity


/// ToDoListView
struct ToDoListView: View {
    
    /// Todo list items
    @State private var todos: [ToDo] = []
    
    /// Show ToDoCreateView flug.
    @State private var showCreateView: Bool = false
    
    /// Show ToDoCreateView flug.
    @State private var showEditView: Bool = false
    
    
    /// ToDoRepository singleton object
    let repository = ToDoRepository.shared
    
    
    var body: some View {
        NavigationView {
            ZStack {
                // showCreateViewがtrueになったら作成画面へ遷移させる
                NavigationLink(
                    destination: ToDoCreateView().onDisappear {
                        getData()
                    },
                    isActive: $showCreateView
                ) {
                    EmptyView()
                }
                .navigationTitle("ToDo一覧")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        //削除ボタン
                        Button(action: {
                            deleteAll()
                        }) {
                            Image(systemName: "trash")
                                .foregroundColor(.blue)
                        }.disabled(todos.isEmpty)
                    }
                }
                
                // List
                List {
                    ForEach(Array(todos.enumerated()), id: \.offset) { index, todo in
                        ToDoListItemView(index: index, todo: todo, onEdited: {
                            getData()
                        }) {
                            getData()
                        }
                    }
                }
                
                // floadting action button
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button(action: {
                            showCreateView = true
                        }, label: {
                            Image(systemName: "pencil")
                                .foregroundColor(.white)
                                .font(.system(size: 24))
                        })
                        .frame(width: 60, height: 60)
                        .background(Color.orange)
                        .cornerRadius(30.0)
                        .padding(
                            EdgeInsets(
                                top: 0,
                                leading: 0,
                                bottom: 16,
                                trailing: 16
                            )
                        )
                    }
                }
            }
        }
        .onAppear {
            getData()
        }
    }
    
    
    /// Get todo data
    func getData() {
        self.todos = ToDoRepository.getAll()
    }
    
    func deleteAll() {
        self.todos = ToDoRepository.deleteAll()
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView()
    }
}
