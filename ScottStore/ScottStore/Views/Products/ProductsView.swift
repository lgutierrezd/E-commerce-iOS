//
//  ProductsView.swift
//  ScottStore
//
//  Created by Luis Gutierrez on 12/5/22.
//

import SwiftUI

struct ProductsView: View {
    var body: some View {
        NavigationView{
            ScrollView(){
                
            }
            .navigationTitle("Products")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        
                    }) {
                        Image(systemName: "cart")
                    }
                    .overlay(Badge(count: 3))
            )
            
        }
        
    }
}

struct Badge: View {
    let count: Int

    var body: some View {
        ZStack(alignment: .topTrailing) {
            Color.clear
            Text(String(count))
                .font(.system(size: 16))
                .padding(5)
                .background(Color.accentColor)
                .clipShape(Circle())
                // custom positioning in the top-right corner
                .alignmentGuide(.top) { $0[.bottom] }
                .alignmentGuide(.trailing) { $0[.trailing] - $0.width * 0.25 }
        }
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
    }
}
