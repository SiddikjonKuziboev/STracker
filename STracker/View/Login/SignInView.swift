//
//  SignInView.swift
//  STracker
//
//  Created by Siddikjon Kuziboev on 04/06/24.
//

import SwiftUI

struct SignInView: View {
    
    @State var login: String = ""
    @State var passwordTF: String = ""
    @State var isRemember: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                LogoTitleView()

                Spacer()
                
                
                VStack(spacing: 20){
                    RoundTextField(title: "Login", text: $login)
                    
                    RoundTextField(title: "Password", text: $passwordTF, isPassword: true)

                    HStack {
                       
                        
                        Button {
                            isRemember = !isRemember

                        } label: {
                            
                            HStack {
                                Image(systemName: isRemember ? "checkmark.square" : "square")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                Text("Remember")
                                    .multilineTextAlignment(.center)
                                    .font(.customFont(.regular, fontSize: 14))
                            }
                            
                        }

                        Spacer()
                        
                        Button {
                            
                        } label: {
                            Text("Forgot Password")
                                .multilineTextAlignment(.center)
                                .font(.customFont(.regular, fontSize: 14))
                                .padding(.horizontal, 20)
                                .padding(.bottom, 20)
                        }

 
                    }
                    .foregroundStyle(.gray)

                    
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

struct SignInView_Previews: PreviewProvider {
   
    @State static var login: String = ""
    @State static var pass: String = ""
    @State static var check: Bool = false
    static var previews: some View {
        SignInView(login: login, passwordTF: pass, isRemember: check)
    }
    
}
