//
//  LoginView.swift
//  Expense-Tracker
//
//  Created by Thibaut Lora on 11/05/2024.
//

import SwiftUI



struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @AppStorage("isFirstTime") private var isFirstTime: Bool = true
    
    var body: some View {
        ZStack{
            Image("LoginPage").resizable().scaledToFill().ignoresSafeArea().frame(width: .screenHeight, height: .screenWidth)
            VStack{
                VStack{
                    InputView(text: $email, title: "Email Address", placeholder: "name@example.com")
                }
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ornare magna nec imperdiet ornare. Nam mollis finibus sem quis porttitor. Ut dignissim nisi ut accumsan luctus.")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .frame(width: .screenWidth * 0.8, height: .screenHeight * 0.05)
                Button(action: {
                    isFirstTime = false
                }, label: {
                    Text("Login In")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .frame(width: .screenWidth * 0.7, height: .screenHeight * 0.08)
                        .background(Color.red)
                        .cornerRadius(10.0)
                        .shadow(radius: 10)
                }).padding()
            }
        }
        
    }
}

struct LoginView_Previews: PreviewProvider{
    static var previews: some View {
        LoginView()
    }
}
