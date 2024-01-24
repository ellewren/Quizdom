//
//  ContentView.swift
//  Quizdom
//
//  Created by LaKeisha Wren on 1/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("mediumLogo")
                .resizable()
                .frame(width: 100, height: 100)
            Text("Quizdom")
                .font(.custom("MoiraiOne-Regular", size: 60))
            Spacer()
            
                .padding()
            
            VStack {
                Text("Choose your category:")
                    .font(.title2)
                    .monospaced()
                Button {
                    print("tapped")
                } label: {
                    Text("Idioms")
                        .foregroundStyle(.white)
                        .monospaced()
                        .frame(width: 150, height: 50)
                        .background(LinearGradient(colors: [.blue, .green], startPoint: .leading, endPoint: .trailing))
                        .border(Color.blue)
                        .clipShape(UnevenRoundedRectangle(cornerRadii: .init(topLeading: 50, topTrailing: 50)))
                        
                }
                .padding()
                
                Button {
                    print("tapped")
                } label: {
                    Text("History")
                        .foregroundStyle(.white)
                        .monospaced()
                        .frame(width: 150, height: 50)
                        .background(LinearGradient(colors: [.pink, .purple], startPoint: .leading, endPoint: .trailing))
                        .border(Color.blue)
                        .clipShape(UnevenRoundedRectangle(cornerRadii: .init(topLeading: 50, topTrailing: 50)))
                }
                .padding()
                
                Button {
                    print("tapped")
                } label: {
                    Text("Grammar")
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .monospaced()
                        .frame(width: 150, height: 50)
                        .background(LinearGradient(colors: [.orange, .red], startPoint: .leading, endPoint: .trailing))
                        .border(Color.red)
                        .clipShape(Capsule())
                }
                .padding()
                
                Button {
                    print("tapped")
                } label: {
                    Text("Word Problems")
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .monospaced()
                        .frame(width: 150, height: 50)
                        .background(LinearGradient(colors: [.yellow, .green], startPoint: .leading, endPoint: .trailing))
                        .border(Color.green)
                        .clipShape(UnevenRoundedRectangle(cornerRadii: .init(topLeading: 50, topTrailing: 50)))
                        
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
    ContentView()
}
