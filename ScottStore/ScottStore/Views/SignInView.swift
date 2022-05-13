//
//  SignInView.swift
//  ScottStore
//
//  Created by Luis Gutierrez on 11/5/22.
//

import SwiftUI

struct SignInView: View {
    @State var email = ""
    @State var password = ""
    
    @State private var showRegisterView = false
    
    @EnvironmentObject var viewModel: UserGlobalStatusViewModel
    
    var body: some View {
        VStack{
            ZStack {
                //                Polygon(sides: 6) // Hexagon
                //                    .fill(LinearGradient(
                //                        gradient: Gradient(colors: [Self.gradientStart, Self.gradientEnd]),
                //                        startPoint: UnitPoint(x: 0.5, y: 0),
                //                        endPoint: UnitPoint(x: 0.5, y: 0.6)
                //                    ))
                //                    .frame(width : 150, height: 150, alignment: .topTrailing)
                Image(systemName: "cloud.sun").foregroundColor(.white).font(.largeTitle)
            }.padding(.top, 150)
            
            VStack{
                TextField("Email", text: $email)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .background(Color(.secondarySystemBackground))
                    .padding()
                    .cornerRadius(8)
                
                SecureField("Password", text: $password)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .background(Color(.secondarySystemBackground))
                    .padding()
                    .cornerRadius(8)
                
                Button(action: {
                    guard !email.isEmpty, !password.isEmpty else {
                        return
                    }
                    
                    viewModel.signIn(email: email, password: password)
                }, label: {
                    Text("Sign in")
                        .foregroundColor(.white)
                        .frame(width: 200, height: 50)
                        .background(Color.pink)
                })
                .cornerRadius(8)
                .padding()
                
                Button(action: {
                    self.showRegisterView.toggle()
                }, label: {
                    Text("Sign up")
                        .foregroundColor(.white)
                        .frame(width: 200, height: 50)
                        .background(Color.blue)
                }).sheet(isPresented: $showRegisterView, content: {
                    // RegisterView()
                })
                .cornerRadius(8)
            }
            .padding()
            Spacer()
        }
    }
    
    static let gradientStart = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255)
    static let gradientEnd = Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
