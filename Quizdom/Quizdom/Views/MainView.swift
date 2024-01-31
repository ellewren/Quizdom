//
//  MainView.swift
//  Quizdom
//
//  Created by LaKeisha Wren on 1/31/24.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            AccountView()
        } else {
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
