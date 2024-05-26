//
//  UICommon.swift
//  Expense-Tracker
//
//  Created by Thibaut Lora on 11/05/2024.
//

import SwiftUI


extension View {
    var safeArea: UIEdgeInsets {
        if let windowScene = (UIApplication.shared.connectedScenes.first as? UIWindowScene) {
            return windowScene.keyWindow?.safeAreaInsets ?? .zero
        }
        return .zero
    }
}


extension CGFloat {
    static var screenWidth: Double {
        return UIScreen.main.bounds.size.width
    }
    static var screenHeight: Double {
        return UIScreen.main.bounds.size.height
    }
}

extension Color{
    static let background = Color("Background")
    static let text = Color("Text")
    static let systemBackground = Color(uiColor: .systemBackground)
    static let icon = Color("Icon")
}
