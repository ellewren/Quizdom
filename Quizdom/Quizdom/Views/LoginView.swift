//
//  LoginView.swift
//  Quizdom
//
//  Created by LaKeisha Wren on 1/23/24.
//

import SwiftUI


struct LoginView: View {
    
    @State private var showRegisterView = false
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        
        
            NavigationStack {
                VStack {
                    VStack {
                        Image("largeBrain")
                            .padding(.top, 100)
                            .frame(width: 100, height: 100)
                        Text("Quizdom")
                            .font(.custom("Monoton", size: 50))
                            .padding(.top, 10)
                        Text("Your daily dose of knowledge")
                            .font(.custom("comfrotaa", size: 15))
                            .padding(.bottom, 80)
                        
                    }
                    Spacer()
                        
                        List {
                            TextField("Username", text: $username)
                                .listRowBackground(Color("Color"))
                            SecureField("Password", text: $password)
                                .listRowBackground(Color("Color"))
                        }
                        .listStyle(.plain)
                        .padding()
                        
                    
                
                        
                    VStack {
                        HStack {
                            Button ( action: { showRegisterView = true } ) {
                                Text("Login")
                                    .frame(width: 120, height: 50)
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .clipShape(Capsule())
                                    .monospaced()
                            }
                            
                            .padding(30)
                            
                            Button ( action: { showRegisterView = true } ) {
                                Text("Sign Up")
                                    .frame(width: 120, height: 50)
                                    .background(Color.green)
                                    .foregroundColor(.white)
                                    .clipShape(Capsule())
                                    .monospaced()
                            }
                            
                            .navigationDestination(isPresented: $showRegisterView) {
                                RegisterView()
                                    .navigationBarBackButtonHidden(true)
                                
                            }
                            
                        }

                        
                        HStack {
                            Button {
                                print("tapped")
                            } label: {
                                Text("Forgot Password?")
                                    .italic()
                                    .tint(.gray)
                            }
                        }
                        Spacer()
                    }
                    
                }
                
                .background(Color("Color"))
                .ignoresSafeArea()
                
       
        
    }
        
        
        

    }
        
}

#Preview {
    LoginView()
}
