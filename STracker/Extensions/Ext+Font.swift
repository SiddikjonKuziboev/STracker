//
//  Ext+Font.swift
//  STracker
//
//  Created by Siddikjon Kuziboev on 07/05/24.
//


import SwiftUI

enum Inter: String {
    
    case regular = "Inter-Regular"
    case medium = "Inter-Medium"
    case light = "Inter-Light"
    case black = "Inter-Black"
    case bold = "Inter-Bold"
    case semibold = "Inter-SemiBold"
    case thin = "Inter-Thin"
    
}


extension Font {
    
    static func customFont(_ font: Inter, fontSize: CGFloat) -> Font  {
        custom(font.rawValue, size: fontSize)
    }
}
