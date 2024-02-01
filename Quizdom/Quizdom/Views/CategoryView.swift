//
//  ContentView.swift
//  Quizdom
//
//  Created by LaKeisha Wren on 1/22/24.
//

import SwiftUI

struct CategoryView: View {
    
    @State private var showQuizView = false
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                VStack {
                    Image("largeBrain")
                        .padding(.top, 100)
                        .frame(width: 100, height: 100)
                    Text("Quizdom")
                        .font(.custom("Monoton", size: 50))
                    Text("Your daily dose of knowledge")
                        .font(.custom("Comfortaa-Regular", size: 15))
                        .padding(.bottom, 20)
                    
                    VStack {
                        Text("Choose your category:")
                            .font(.custom("Comfortaa-Regular", size: 25))
                        
                            .padding(.bottom, 50)
                        
                        VStack {
                            
                            Button(action: { showQuizView = true } ) {
                                Label("Math", systemImage: "minus.forwardslash.plus")
                                    .frame(width: 300, height: 80)
                                    .foregroundColor(.white)
                                    .background(Color.cyan)
                                    .cornerRadius(10)
                                    .padding()
                                
                            }
                            
                            
                            Button(action: { showQuizView = true } ) {
                                Label("Geography", systemImage: "globe.europe.africa")
                                    .frame(width: 300, height: 80)
                                    .foregroundColor(.white)
                                    .background(Color.green)
                                    .cornerRadius(10)
                                    .padding()
                                
                            }

                            
                            
                            
                            Button (action: { showQuizView = true } ) {
                                Label("History", systemImage: "book.closed")
                                    .frame(width: 300, height: 80)
                                    .foregroundColor(.white)
                                    .background(Color.orange)
                                    .cornerRadius(10)
                                    .padding()
                            }
                            
                            
                            Button(action: { showQuizView = true } ) {
                                Label("Science", systemImage: "testtube.2")
                                    .frame(width: 300, height: 80)
                                    .foregroundColor(.white)
                                    .background(Color.red)
                                    .cornerRadius(10)
                                    .padding()
                                
                            }
                            
                        }
                        
                    
                        
                    }
                    Spacer()
                    
                }
                .navigationDestination(isPresented: $showQuizView) {
                    QuizView()
                        .navigationBarBackButtonHidden(true)
                    
                }
            }
            .frame(maxWidth: .infinity)
            .background(Color("Color"))
            
        }
        
        
        
        
        
    }
}

func testButton () {
    print("This is a test")
}

#Preview {
    CategoryView()
}
