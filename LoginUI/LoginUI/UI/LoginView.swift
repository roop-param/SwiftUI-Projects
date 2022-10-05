//
//  LoginView.swift
//  LoginCredentials
//
//  Created by paramroop kaur on 04/10/22.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""

    
    var body: some View {
      
        VStack {
            
       AuthHeaderView(title1: "Hello There.", title2: "Welcome.")
            
            VStack(spacing: 40) {
               CustomInputField(imageName: "envelope",
                                placeholderText: "Email",
                                text: $email)
             
                CustomInputField(imageName: "lock",
                                 placeholderText: "Password",
                                 text: $password)
            }
            .padding(.horizontal,32)
            .padding(.top, 44)
            
            HStack {
                Spacer ()
                
                NavigationLink {
                    Text("Reset password")
                } label: {
                    Text("Forgot Pssword?")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color(.systemGray))
                        .padding(.trailing, 24)
                }
            }
            
            Button {
               print("Signed in")
            } label: {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemGray))
                    .clipShape(Capsule())
                
                    .padding()
            }
            .shadow(color:.gray.opacity(0.5),radius: 10, x: 0, y: 0)
            
            Spacer()
            
            NavigationLink{
                HomeView()
                    .navigationBarBackButtonHidden(true)
            } label: {
                HStack {
                    Text("Don't have an account?")
                        .font(.footnote)
                    
                    Text("Sign Up")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom,32)
            .foregroundColor(Color(.systemGray))
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
