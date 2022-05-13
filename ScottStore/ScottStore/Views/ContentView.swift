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
        NavigationView{
            if viewModel.userToken.signedIn ?? false {
                MainView()
                
            } else {
                SignInView()
                    .navigationTitle("Sign in")
            }
        }
        .onAppear{
            viewModel.userToken.signedIn = viewModel.isSignedIn
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
