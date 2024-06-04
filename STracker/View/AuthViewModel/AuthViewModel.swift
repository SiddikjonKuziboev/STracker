//
//  AuthViewModel.swift
//  STracker
//
//  Created by Siddikjon Kuziboev on 04/06/24.
//

import SwiftUI
import Combine

class AuthViewModel: ObservableObject {
    
    @Published var isAuthenticated: Bool = false
    @Published var user: User? = nil
    
    func signIn(username: String, password: String) {
        self.user = User(username: username)
        self.isAuthenticated = true
    }
    
    func signUp(username: String, password: String) {
           // Add your sign-up logic here
           // On success:
           self.user = User(username: username)
           self.isAuthenticated = true
       }

    func signOut() {
           self.user = nil
           self.isAuthenticated = false
       }
    
}

struct User {
    var username: String
}
