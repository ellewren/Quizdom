//
//  RegisterView.swift
//  Quizdom
//
//  Created by LaKeisha Wren on 1/30/24.
//

import SwiftUI
import Firebase

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewModel()
    
    
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
                        TextField("Username", text: $viewModel.userName)
                            .autocorrectionDisabled()
                        TextField("Email", text: $viewModel.email)
                            .autocorrectionDisabled()
                            .autocapitalization(.none)
                        SecureField("Password", text: $viewModel.password)
                        DatePicker("Birthdate", selection: $viewModel.birthdate,in: ...Date(), displayedComponents:.date)
                        
                    }
                    .foregroundStyle(Color.gray)
                    .scrollContentBackground(.hidden)
                    
                    Button(action: { viewModel.register() },
                           label: {
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
