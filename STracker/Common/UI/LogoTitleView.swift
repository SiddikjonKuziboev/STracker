//
//  LogoTitleView.swift
//  STracker
//
//  Created by Siddikjon Kuziboev on 03/06/24.
//

import SwiftUI

struct LogoTitleView: View {
    
    var titleColor: Color = .white
    
    var body: some View {
        HStack {
            Image("dollar")
                .resizable()
                .frame(width: 35, height: 35)
                
            
            Text("STracker")
                .font(Font.customFont(.bold, fontSize: 30))
                .foregroundStyle(titleColor)
        }
    }
}

#Preview {
    LogoTitleView()
}
