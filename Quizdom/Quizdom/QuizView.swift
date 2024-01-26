//
//  QuizView.swift
//  Quizdom
//
//  Created by LaKeisha Wren on 1/26/24.
//

import SwiftUI


struct QuizView: View {
    
    @State private var quizQuestion: String = ""
    
    var body: some View {
        
        HStack {
            Spacer()
            Text("30")
                .padding(8)
                .frame(width: 50, height: 50)
                .foregroundColor(.red)
                .font(.custom("Comfortaa-Regular", size: 25))
        }
        
        VStack {
            Image("mediumBrain")
            Text("This a quiz question. Quiz questions sometimes have multiple lines. How many lines can one question have")
                .font(.custom("Comfortaa-Regular", size: 25))
                .frame(width: 300)
                .multilineTextAlignment(.center)
                .padding(10)
                .border(Color.yellow, width: 3)
                
                
            
                
        }
        
        Spacer()
        
        HStack {
            
            Button(action: testButton) {
                Label("This is the wrong answer.", systemImage: "a.circle")
                    .padding()
                    .frame(width: 150, height: 100)
                    .foregroundColor(.white)
                    .background(Color.cyan)
                    .cornerRadius(10)
                    .padding()
                
            }
            
            
            Button(action: testButton) {
                Label("This is the wrong answer.", systemImage: "b.circle")
                    .padding()
                    .frame(width: 150, height: 100)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(10)
                    .padding()
                
            }
        }
        
        HStack {
            
            Button(action: testButton) {
                Label("This is the right answer.", systemImage: "c.square")
                    .padding()
                    .frame(width: 150, height: 100)
                    .foregroundColor(.white)
                    .background(Color.orange)
                    .cornerRadius(10)
                    .padding()
                
            }
            
            
            Button(action: testButton) {
                Label("This is the wrong answer.", systemImage: "d.square")
                    .padding()
                    .frame(width: 150, height: 100)
                    .foregroundColor(.white)
                    .background(Color.pink)
                    .cornerRadius(10)
                    .padding()
                
            }
            
        }
        
        Spacer()
        
        
        
    }
    
}

#Preview {
    QuizView()
}
