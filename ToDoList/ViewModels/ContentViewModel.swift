//
//  ContentViewModel.swift
//  ToDoList
//
//  Created by Vikram Dhinsa on 4/6/24.
//

import FirebaseAuth
import Foundation

class ContentViewModel: ObservableObject {
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener({ [weak self] _, user in
            self?.currentUserId = user?.uid ?? ""
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        })
    }
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
