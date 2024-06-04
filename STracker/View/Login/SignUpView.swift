//
//  SignUpView.swift
//  STracker
//
//  Created by Siddikjon Kuziboev on 03/06/24.
//

import SwiftUI

struct SignUpView: View {
    @State var emailTF: String
    @State var passwordTF: String
    
    var body: some View {
        ZStack {
            VStack {
                LogoTitleView()

                Spacer()
                
                
                VStack(spacing: 20){
                    RoundTextField(title: "E-mail address", keyboardType: .emailAddress, text: $emailTF)
                    
                    RoundTextField(title: "Password", text: $passwordTF, isPassword: true)

                    
                    Text("How are you my friend? I am ok!")
                        .multilineTextAlignment(.center)
                        .font(.customFont(.regular, fontSize: 18))
                        .foregroundStyle(.white)
                        .padding(.horizontal, 20)
                        .padding(.bottom, 20)
                    
                    PrimaryButton(title: "Get Started", titleColor: .white , cornerRadius: 16) {
                        
                    }
                    .padding(.bottom, 120)

                    Text("Do you have already an account?")
                        .multilineTextAlignment(.center)
                        .font(.customFont(.regular, fontSize: 16))
                        .foregroundStyle(.white)
                    
                    PrimaryButton(title: "Sign In", cornerRadius: 16, backColor: .secondary) {
                        
                    }
                }
                
            }
        }
        .ignoresSafeArea()
        .padding()
        .background(Gradient(colors: [.black, .black, Color.titleGray, .gray]))

    }
}

struct SignUpView_Previews: PreviewProvider {
   
    @State static var email: String = ""
    @State static var pass: String = ""
    static var previews: some View {
        SignUpView(emailTF: email, passwordTF: pass)
    }
    
}
