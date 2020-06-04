//
//  LoginPage.swift
//  LoginSignup
//
//  Created by ramil on 04.06.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct LoginPage: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Image("background")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }.edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Login")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                
                Text("Login to your account")
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
                        TextField("", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                }.padding()
                
                Button(action: {
                    
                }) {
                    Text("Login")
                        .foregroundColor(.black)
                        .padding()
                        .frame(width: 300)
                        .background(Color("green")
                            .cornerRadius(20)
                            .offset(y: 2))
                        .overlay(RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 1))
                }.padding()
                
                HStack {
                    Text("Don't have an account?")
                    Text("Sign up")
                        .bold()
                }
                Spacer()
            }
        }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
