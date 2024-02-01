//
//  RegisterViewModel.swift
//  Quizdom
//
//  Created by LaKeisha Wren on 1/31/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class RegisterViewModel: ObservableObject {
    
    @Published var userName = String()
    @Published var email = String()
    @Published var password = String()
    @Published var birthdate = Date()
    
    init () {}
    
    func register() {
        guard validate() else {
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) { [weak self ]result, error in
            guard let userId = result?.user.uid else {
                return
            }
            
            self?.createUserRecord(id: userId)
        }
    }
    
    private func createUserRecord(id: String) {
        let newUser = User(id: id, userName: userName, email: email, birthDate: birthdate, joined: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        
        db.collection("user")
            .document(id)
            .setData(newUser.asDictionary())
        
    }
    
    private func validate() -> Bool {
        guard !userName.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
                return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            return false
        }
        
        guard password.count >= 6 else {
            return false
        }
        
        return true
    }
    
}
