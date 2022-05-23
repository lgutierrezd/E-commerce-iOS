//
//  ContentView.swift
//  ScottStore
//
//  Created by Luis Gutierrez on 13/4/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: UserGlobalStatusViewModel
    
    var body: some View {
        if viewModel.isSignedIn {
            MainView()
                .onAppear{
                    viewModel.userToken.signedIn = viewModel.isSignedIn
                }
        } else {
            SignInView()
                .navigationTitle("Sign in")
        }
        
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
