//
//  AccountView.swift
//  Quizdom
//
//  Created by LaKeisha Wren on 1/25/24.
//

import SwiftUI

struct AccountView: View {
    
    @State private var showCategoryView = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Button (action: { showCategoryView = true} ) {
                    Text("Go to Daily Quizes")
                }
                
                }
            .navigationDestination(isPresented: $showCategoryView) {
                CategoryView()
            }
        
//                .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    AccountView()
}
