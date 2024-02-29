//
//  AccountView.swift
//  Quizdom
//
//  Created by LaKeisha Wren on 1/25/24.
//

import SwiftUI
import Charts

struct AccountView: View {
    
    let chartColors: [Color] = [.blue, .green, .orange, .red]
    
    let data = [ChartData(type: "Math", count: 30),
                    ChartData(type: "Geography", count: 40),
                    ChartData(type: "History", count: 50),
                    ChartData(type: "Science", count: 80)]
    
    
    @State private var showCategoryView = false
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    Text("Report Card")
                        .font(.custom("Comfortaa", size: 30))
                        .padding()
                        Text("My Stats")
                            .padding(.bottom, 250)
                            .font(.custom("Comfortaa", size: 25))
                    HStack {
                        Text("Top Subject")
                            .font(.custom("Comfortaa", size: 15))
                        Text("Improve")
                            .font(.custom("Comfortaa", size: 15))
                        Text("Average Grade")
                            .font(.custom("Comfortaa", size: 15))
                    }
                        Divider()
                            .frame(width: 350, height: 2)
                            .overlay(.white)
                        
                        
                        
                        
                        
                            
                    
//                    .overlay(
//                        RoundedRectangle(cornerRadius: 20)
//                                .stroke(.white, lineWidth: 1)
//                    )
//                    
                    
                    
                    Chart(data) { dataPoint in
                                BarMark(x: .value("Population", dataPoint.count),
                                        y: .value("Type", dataPoint.type))
                                .foregroundStyle(by: .value("Type", dataPoint.type))
                                .annotation(position: .trailing) {
                                    Text(String(dataPoint.count))
                                        .foregroundColor(.gray)
                                }
                            }
                    .chartForegroundStyleScale(range: chartColors)
                            .chartLegend(.hidden)
                            .chartXAxis(.hidden)
                            .chartYAxis {
                                AxisMarks { _ in
                                    AxisValueLabel()
                                }
                            }
                            .aspectRatio(1, contentMode: .fit)
                            .padding()
                }
                
                VStack {
                    Button (action: { showCategoryView = true} ) {
                        Text("Go to Daily Quizes")
                        
                    }
                    .frame(width: 200, height: 50)
                    .background(Color.indigo)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    
                }
                .navigationDestination(isPresented: $showCategoryView) {
                    CategoryView()
                }
                
                Spacer()
                
            }
            .frame(maxWidth: .infinity)
            .background(Color("Color"))
            
        }
        
            
        
    }
    
}

#Preview {
    AccountView()
}
