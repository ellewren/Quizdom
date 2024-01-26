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
            Image("mediumLogo")
                .resizable()
                .frame(width: 100, height: 100)
            Text("Quizdom")
                .font(.custom("Comfortaa-Regular", size: 50))
            Spacer()
            

    
            VStack {
                Text("Choose your category:")
                    
                    .font(.title2)
                    .monospaced()
                Button () {
                        
                } 
            label: {
                    Text("Idioms")
                        .foregroundStyle(.white)
                        .monospaced()
                        .frame(width: 150, height: 50)
                        
                }
            .font(.custom("Comfortaa-Regular", size: 20))
                .padding()
                
         
                Button {
                    print("tapped")
                } label: {
                    Text("History")
                        .foregroundStyle(.black)
                        .monospaced()
                        .frame(width: 150, height: 50)

                }
                .padding()
                
                Button {
                    print("tapped")
                } label: {
                    Text("Grammar")
                        .fontWeight(.bold)
                        .foregroundStyle(.black)
                        .monospaced()
                        .frame(width: 150, height: 50)
                        
                }
                .padding()
                
                Button {
                    print("tapped")
                } label: {
                    Text("Word Problems")
                        .fontWeight(.bold)
                        .foregroundStyle(.black)
                        .monospaced()
                        .frame(width: 150, height: 50)
                      
                        
                }
                .padding()
                
            }
            Spacer()
        }
        Spacer()
        .padding()
        
        
    }
}

#Preview {
    CategoryView()
}
