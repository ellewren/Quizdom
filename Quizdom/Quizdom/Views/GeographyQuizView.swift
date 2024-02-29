//
//  GeographyQuizView.swift
//  Quizdom
//
//  Created by LaKeisha Wren on 2/16/24.
//

import SwiftUI



struct GeographyQuizView: View {
    
    @State private var questionTimer = 30
    
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    @State private var question: [Questions] = []
    
    @State private var quizQuestion = ""
    
    @StateObject private var networkManager = NetworkManager.shared
    
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
                Text("\(quizQuestion)")
                    .font(.custom("Comfortaa-Regular", size: 25))
                    .frame(width: 300, height: 200)
                    .multilineTextAlignment(.leading)
                    .padding(10)
                    .border(Color.green, width: 3)
                
                
                
                
            }
            .onAppear {
                getQuizQuestion()
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
    
    func getQuizQuestion() {
        NetworkManager.shared.getGeographyQuiz { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let questions):
                    if let firstQuestion = questions.first {
                        self.quizQuestion = firstQuestion.question
                    } else {
                        print("No questions received from the API.")
                    }
                case .failure(let error):
                                print("Error fetching quiz question: \(error)")
                }
            }
        }
    }

        
    
}

#Preview {
    GeographyQuizView()
}
