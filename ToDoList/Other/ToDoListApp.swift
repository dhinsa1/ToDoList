//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Vikram Dhinsa on 4/5/24.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
