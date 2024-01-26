//
//  QuizdomApp.swift
//  Quizdom
//
//  Created by LaKeisha Wren on 1/22/24.
//

import SwiftUI
import Firebase

@main
struct QuizdomApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    
    
    var body: some Scene {
        WindowGroup {
            CategoryView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
      
      print("Configured firebase")
      
    return true
  }
}
