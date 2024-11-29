//
//  FruitsApp.swift
//  Fruits
//
//  Created by Evgeniy Borovoy on 11/29/24.
//

import SwiftUI

@main
struct FruitsApp: App {
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
