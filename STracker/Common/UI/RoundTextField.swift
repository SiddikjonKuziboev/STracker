//
//  RoundTextField.swift
//  STracker
//
//  Created by Siddikjon Kuziboev on 03/06/24.
//

import SwiftUI

struct RoundTextField: View {
   
    @State var title: String = "Title"
    @State var keyboardType: UIKeyboardType = .default
    @Binding var text: String
    var isPassword: Bool = false
    
    var body: some View {
        VStack {
            Text(title)
                .multilineTextAlignment(.leading)
                .font(.customFont(.regular, fontSize: 14))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
                .foregroundStyle(.gray)
                .padding(.bottom, 4)
            
            if isPassword {
                SecureField("", text: $text)
                    .padding(15)
                    .keyboardType(keyboardType)
                    .frame(height: 45)
                    .overlay {
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.gray, lineWidth: 1)
                    }
                    .foregroundStyle(.white)
                    .background(Color.gray.opacity(0.05))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            }else {
                
                TextField("", text: $text)
                    .padding(15)
                    .keyboardType(keyboardType)
                    .frame(height: 45)
                    .overlay {
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.gray, lineWidth: 1)
                    }
                    .foregroundStyle(.white)
                    .background(Color.gray.opacity(0.05))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            }
        }
        
    }
}

#Preview {
    RoundTextField(text: .constant("sfd"))
}
