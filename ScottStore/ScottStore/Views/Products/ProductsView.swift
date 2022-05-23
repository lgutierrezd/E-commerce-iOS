//
//  ProductsView.swift
//  ScottStore
//
//  Created by Luis Gutierrez on 12/5/22.
//

import SwiftUI

struct ProductsView: View {
    @ObservedObject var storefrontViewModel: StorefrontViewModel
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(storefrontViewModel.homeViewCategoriesProductsList, id: \.node.id) { item in
                    HomeSectionCategoryProductsGridCell(item: item)
                }
            }
            .padding()
            .navigationBarTitle("Products")
            .navigationBarItems(
                trailing:
                    HStack {
                        Button(action: {
                            
                        }) {
                            Image(systemName: "cart")
                        }
                        .overlay(Badge(count: 5))
                    }
        )
        }
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        let storeFrontVM: StorefrontViewModel = StorefrontViewModel()
        ProductsView(storefrontViewModel: storeFrontVM)
    }
}
