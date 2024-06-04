//
//  PrimaryButton.swift
//  STracker
//
//  Created by Siddikjon Kuziboev on 08/05/24.
//

import SwiftUI

struct PrimaryButton: View {
    
    var title: String = "Title"
    
    var icon: String? = nil
    var iconColor: Color = .white
    
    var titleColor: Color = .white
    var cornerRadius = 0
    
    var backColor: Color = .main
    var action: () -> Void
   
    var body: some View {
        Button{
            action()
            
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: CGFloat(cornerRadius))
                    .foregroundStyle(backColor)
                    .frame(height: 56)
                HStack {
                    if let icon = icon {
                        Image(icon)
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundStyle(iconColor)
                    }
                    
                    Text(title)
                        .font(.customFont(.medium, fontSize: 18))
                        .foregroundStyle(titleColor)
                    
                }
            }
        }
    }
}

#Preview {
    PrimaryButton(action: {})
}
