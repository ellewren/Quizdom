//
//  ContentView.swift
//  Quizdom
//
//  Created by LaKeisha Wren on 1/22/24.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        VStack {
            Image("smallBrain")
                .resizable()
                .frame(width: 100, height: 100)
            Text("Quizdom")
                .font(.custom("MoiraiOne-Regular", size: 50))
            Text("Your daily dose of knowledge")
                .font(.custom("Comfortaa-Regular", size: 15))
                .padding(.bottom, 20)
            
            Spacer()
            

    
            VStack {
                Text("Choose your category:")
                    .font(.custom("Comfortaa-Regular", size: 25))
                
                    .padding(.bottom, 50)
                
                HStack {
                    
                    Button(action: testButton) {
                        Label("Idioms", systemImage: "person.wave.2")
                            .padding()
                            .frame(width: 150, height: 175)
                            .foregroundColor(.white)
                            .background(Color.cyan)
                            .cornerRadius(10)
                            .padding()
                        
                    }
                    
                    
                    Button(action: testButton) {
                        Label("Geogrpahy", systemImage: "globe.europe.africa")
                            .padding()
                            .frame(width: 150, height: 175)
                            .foregroundColor(.white)
                            .background(Color.green)
                            .cornerRadius(10)
                            .padding()
                        
                    }
                }
                
                HStack {
                    
                    Button(action: testButton) {
                        Label("Grammar", systemImage: "text.word.spacing")
                            .padding()
                            .frame(width: 150, height: 175)
                            .foregroundColor(.white)
                            .background(Color.orange)
                            .cornerRadius(10)
                            .padding()
                    }
                    
                    
                    Button(action: testButton) {
                        Label("Science", systemImage: "testtube.2")
                            .padding()
                            .frame(width: 150, height: 175)
                            .foregroundColor(.white)
                            .background(Color.red)
                            .cornerRadius(10)
                            .padding()
                        
                    }
                }
               
                
            }
          Spacer()
        }
        Spacer()
            .padding()
        
        
        
        
        
    }
}

func testButton () {
    print("This is a test")
}

#Preview {
    CategoryView()
}
