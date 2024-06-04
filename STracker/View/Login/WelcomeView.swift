//
//  WelcomeView.swift
//  STracker
//
//  Created by Siddikjon Kuziboev on 07/05/24.
//

import SwiftUI

struct WelcomeView: View {
    
    @State private var showLoginView = false
    @State private var showRegisterView = false

    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(colors: [.black, Color.titleGray, .gray], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                
                
                VStack {
                    LogoTitleView()
                    
                    Spacer()
                    
                    Text("Welcome to STrack application for saving your money and writing your expenses")
                        .multilineTextAlignment(.center)
                        .font(.customFont(.regular, fontSize: 16))
                        .padding(.horizontal, 20)
                        .foregroundStyle(.white)
                    
                    VStack {
                        
                        PrimaryButton(title: "I have an account" , titleColor: .black , cornerRadius: 16, backColor: .white) {
                            showLoginView = true
                        }
                        
                           
                            PrimaryButton(title: "Get started" ,cornerRadius: 16) {
                                showRegisterView = true
                            }
                        
                        
                    }
                    .padding()
                }
            }
            .navigationDestination(isPresented: $showRegisterView) {
                SignUpView(emailTF: "", passwordTF: "")
            }
            
            .navigationDestination(isPresented: $showLoginView) {
                SignInView()
            }
        }
      
    }
}

#Preview {
    WelcomeView()
}
