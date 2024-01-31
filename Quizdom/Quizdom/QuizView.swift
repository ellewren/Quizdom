//
//  QuizView.swift
//  Quizdom
//
//  Created by LaKeisha Wren on 1/26/24.
//

import SwiftUI


struct QuizView: View {
    
    @State private var questionTimer = 30
    
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    @State private var quizQuestion: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("\(questionTimer)")
                    .padding(8)
                    .frame(width: 50, height: 50)
                    .foregroundColor(.red)
                    .font(.custom("Comfortaa-Regular", size: 25))
            }
            .onReceive(timer) { time in
                if questionTimer > 0 {
                    questionTimer -= 1
                }}
            
            VStack {
                Image("mediumBrain")
                Text("This a quiz question. Quiz questions sometimes have multiple lines. How many lines can one question have")
                    .font(.custom("Comfortaa-Regular", size: 25))
                    .frame(width: 300, height: 200)
                    .multilineTextAlignment(.leading)
                    .padding(10)
                    .border(Color.yellow, width: 3)
                
                
                
                
            }
            
            Spacer()
            
            VStack {
                
                Button(action: testButton) {
                    Text("This is the wrong answer. How long can th e answer be here?")
                        .padding()
                        .multilineTextAlignment(.leading)
                        .frame(width: 300, height: 80)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                    
                    
                }
                
                
                Button(action: testButton) {
                    Text("This is the wrong answer.")
                        .multilineTextAlignment(.leading)
                        .frame(width: 300, height: 80)
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(10)
                    
                    
                }
            }
            
            
            Button(action: testButton) {
                Text("This is the right answer.")
                    .multilineTextAlignment(.leading)
                    .frame(width: 300, height: 80)
                    .foregroundColor(.white)
                    .background(Color.orange)
                    .cornerRadius(10)
                
                
            }
            
            
            Button(action: testButton) {
                Text("This is the wrong answer.")
                    .multilineTextAlignment(.leading)
                    .frame(width: 300, height: 80)
                    .foregroundColor(.white)
                    .background(Color.pink)
                    .cornerRadius(10)
                
                
            }
            
            
            Spacer()
            
            
        }
        .background(Color("Color"))
        
    }
        
    
}

#Preview {
    QuizView()
}
