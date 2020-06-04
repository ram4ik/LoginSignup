//
//  MainPage.swift
//  LoginSignup
//
//  Created by ramil on 04.06.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct MainPage: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Automatic identity verification which enables you to verify your identity")
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding()
                Image("Illustration")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                NavigationLink(destination: LoginPage()) {
                    Text("Login")
                        .foregroundColor(.black)
                        .padding()
                        .frame(width: 300)
                        .overlay(RoundedRectangle(cornerRadius: 20)
                            
                            .stroke(Color.black, lineWidth: 1))
                }
                NavigationLink(destination: SignupPage()) {
                    Text("Sign up")
                        .foregroundColor(.black)
                        .padding()
                        .frame(width: 300)
                        .background(Color("yellow")
                            .cornerRadius(20)
                            .offset(y: 2))
                        .overlay(RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 1))
                    
                }.padding()
                
            }.navigationBarTitle(Text("Welcome"))
        }
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
