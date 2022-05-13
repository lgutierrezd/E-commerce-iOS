//
//  ScottStoreApp.swift
//  ScottStore
//
//  Created by Luis Gutierrez on 13/4/22.
//

import SwiftUI

@main
struct ScottStoreApp: App {
    var body: some Scene {
        WindowGroup {
            let viewModel = UserGlobalStatusViewModel()
            ContentView()
               .environmentObject(viewModel)
        }
        
    }
}
