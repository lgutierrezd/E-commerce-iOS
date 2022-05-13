//
//  MainView.swift
//  ScottStore
//
//  Created by Luis Gutierrez on 12/5/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ProductsView()
                .tabItem {
                Image(systemName: "square.grid.2x2")
                Text("Browse")
            }
            
            CategoriesView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Categories")
            }
            
            OrdersView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Orders")
            }
            
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
            }
        } //TabView
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
