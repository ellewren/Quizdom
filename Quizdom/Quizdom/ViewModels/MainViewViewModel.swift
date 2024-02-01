//
//  MainViewViewModel.swift
//  Quizdom
//
//  Created by LaKeisha Wren on 1/31/24.
//

import Foundation
import FirebaseAuth

//Please change this class name.
class MainViewViewModel: ObservableObject {
    @Published var currentUserId: String = ""
    private var  handler: AuthStateDidChangeListenerHandle?
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener { [weak self]  _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
