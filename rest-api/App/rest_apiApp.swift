//
//  rest_apiApp.swift
//  rest-api
//
//  Created by Gerardo Cetzal on 28/04/21.
//

import SwiftUI

@main
struct rest_apiApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
            
        }
    }
}
