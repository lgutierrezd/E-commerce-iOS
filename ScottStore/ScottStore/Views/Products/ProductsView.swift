//
//  ProductsView.swift
//  ScottStore
//
//  Created by Luis Gutierrez on 12/5/22.
//

import SwiftUI

struct ProductsView: View {
    @ObservedObject var storefrontViewModel: StorefrontViewModel
    
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
        ]
    
    var body: some View {
        NavigationView{
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(storefrontViewModel.frontProducts, id: \.node.id) { item in
                        VStack {
                            AsyncImage(url: URL(string: item.node.thumbnail!.url))
                                .fixedSize()
                                .scaledToFill()
                                .frame(width: 150, height: 150, alignment: .center)
                                .shadow(color: Color(red: 0, green: 0, blue: 0.3), radius: 3, x: 2, y: 2)
                                .background(
                                    LinearGradient(gradient: Gradient(colors: [Color.blue, Color.cyan]), startPoint: .top, endPoint: .bottom)
                                )
                                .cornerRadius(8)
                            VStack(alignment: .center, spacing: 5){
                                Text(item.node.name)
                                    .font(.body)
                                    .fontWeight(.bold)
                                Text(item.node.category?.name ?? "")
                                    .font(.caption)
                                    .foregroundColor(Color.secondary)
                            }
                        }//VStack
                        
                    }
                }
                .padding(.horizontal)
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
        let storeFrontVM: StorefrontViewModel = StorefrontViewModel()
        ProductsView(storefrontViewModel: storeFrontVM)
    }
}
