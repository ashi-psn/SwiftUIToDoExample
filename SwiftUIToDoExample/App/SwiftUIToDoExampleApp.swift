//
//  SwiftUIToDoExampleApp.swift
//  SwiftUIToDoExample
//
//  Created by 葦沢尚也 on 2022/09/15.
//

import SwiftUI
import EasyUserDefaults

@main
struct SwiftUIToDoExampleApp: App {
    
    init() {
        setNavigationApperance()
    }
    
    var body: some Scene {
        WindowGroup {
            ToDoListView()
        }
    }
    
    func setNavigationApperance() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.white
        appearance.titleTextAttributes = [
            .foregroundColor: UIColor.black
        ]
        appearance.largeTitleTextAttributes = [
            .foregroundColor: UIColor.black
        ]
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
}
