//
//  SignupPage.swift
//  LoginSignup
//
//  Created by ramil on 04.06.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct SignupPage: View {
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    var body: some View {
        VStack {
            Spacer()
            Text("Sign up")
                .font(.largeTitle)
                .bold()
                .padding()
            Text("Create an account, It's free")
                .foregroundColor(.secondary)
                .padding()
            
            Group {
                VStack {
                    HStack {
                        Text("Email")
                            .foregroundColor(.secondary)
                        Spacer()
                    }
                    TextField("", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                VStack {
                    HStack {
                        Text("Password")
                            .foregroundColor(.secondary)
                        Spacer()
                    }
                    SecureField("", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                VStack {
                    HStack {
                        Text("Confirm Password")
                            .foregroundColor(.secondary)
                        Spacer()
                    }
                    SecureField("", text: $confirmPassword)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
            }.padding()
            
            Spacer()
            
            Button(action: {
                
            }) {
                Text("Sign up")
                    .foregroundColor(.black)
                    .padding()
                    .frame(width: 300)
                    .background(Color("green")
                        .cornerRadius(20)
                        .offset(y: 2))
                    .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.black, lineWidth: 1))
            }.padding()
            
            Spacer()
            
            HStack {
                Text("Already have an account?")
                Text("Login")
                    .bold()
            }
        }
    }
}

struct SignupPage_Previews: PreviewProvider {
    static var previews: some View {
        SignupPage()
    }
}
