//
//  RegisterView.swift
//  Quizdom
//
//  Created by LaKeisha Wren on 1/30/24.
//

import SwiftUI
import Firebase

struct RegisterView: View {
    
    @State var userName = ""
    @State var email = ""
    @State var password = ""
    @State var birthdate = Date()
    
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack{
                    Image("mediumBrain")
                    Text("Sign up")
                        .font(.custom("Comfortaa-Regular", size: 30))
                    
                    Text("Welcome to Quizdom")
                        .font(.custom("Comfortaa-Regular", size: 20))
                    Form {
                        TextField("Username", text: $userName)
                        TextField("Email", text: $email)
                        SecureField("Password", text: $password)
                        DatePicker("Birthdate", selection: $birthdate,in: ...Date(), displayedComponents:.date)
                        
                    }
                    .foregroundStyle(Color.gray)
                    .scrollContentBackground(.hidden)
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Sign Up")
                    })
                    .frame(width: 120, height: 50)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    .monospaced()
                    
                    
                }
                .padding(.bottom)
                
            
            }
            
            .background(Color("Color"))
        }
        
    }
}

#Preview {
    RegisterView()
}
