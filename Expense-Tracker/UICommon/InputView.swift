//
//  InputView.swift
//  Expense-Tracker
//
//  Created by Thibaut Lora on 15/05/2024.
//

import SwiftUI

struct InputView: View {
    @Binding var text: String
    let title: String
    let placeholder: String
    let isSecureField = false
    
    var body: some View {
        VStack(alignment: .leading,spacing: 12) {
            Text(title).foregroundColor(Color(.white)).fontWeight(.semibold).font(.footnote)
            if isSecureField {
                SecureField(placeholder, text: $text).font(.system(size:14))
            } else {
                TextField(placeholder, text: $text).font(.system(size:14))
            }
            Divider()
        }
    }
}

#Preview {
    InputView(text: .constant(""), title:"Email Adress", placeholder: "name@example.com")
}
