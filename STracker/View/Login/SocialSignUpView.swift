//
//  SocialSignUpView.swift
//  STracker
//
//  Created by Siddikjon Kuziboev on 08/05/24.
//

import SwiftUI

struct SocialSignUpView: View {
    var body: some View {
        ZStack {
            VStack {
                LogoTitleView()
                Spacer()
                
                VStack {
                    VStack {
                        
                        PrimaryButton(title: "Sign Up with App", icon: "apple-logo", titleColor: .white , cornerRadius: 16) {
                            
                        }
                        
                        PrimaryButton(title: "Sign Up with Google", icon: "google", titleColor: .black , cornerRadius: 16, backColor: .white) {
                            
                        }
                       
                        
                        PrimaryButton(title: "Sign Up with Facebook", icon: "facebook", titleColor: .white , cornerRadius: 16, backColor: .black) {
                            
                        }
                        

                    }
                    .padding()
                    
                    Text("or")
                        .foregroundStyle(.white)
                    
                    PrimaryButton(title: "Signup with e-mail", cornerRadius: 16, backColor: .secondary) {
                        
                    }
                    .padding()
                }
                
                
                Text("Welcome to STrack application for saving your money and writing your expenses")
                    .multilineTextAlignment(.center)
                    .font(.customFont(.regular, fontSize: 16))
                    .padding(.horizontal, 20)
                    .foregroundStyle(.white)
            }
        }
        .background(Gradient(colors: [.black, Color.titleGray, .gray]))
    }
}

#Preview {
    SocialSignUpView()
}
