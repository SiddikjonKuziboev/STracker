//
//  ContentView.swift
//  STracker
//
//  Created by Siddikjon Kuziboev on 07/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var authViewModel = AuthViewModel()
    
    var body: some View {
        Group {
            if authViewModel.isAuthenticated {
                MainView()
            }else {
                WelcomeView()
            }
        }
        .environmentObject(authViewModel)
    }
}

#Preview {
    ContentView()
}
