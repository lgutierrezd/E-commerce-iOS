//
//  ProductHomeGridCell.swift
//  ScottStore
//
//  Created by Luis Gutierrez on 22/5/22.
//

import SwiftUI

struct HomeSectionCategoryProductsGridCell: View {
    var item: HomeViewQuery
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        VStack(spacing: 20) {
            Text(item.node.name)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Constants.BlueberryGradientColors[1])
                .frame(width: 380, alignment: .leading)
            Spacer()
        }
        LazyVGrid(columns: columns, spacing: 20) {
            ForEach(item.node.products!.edges, id: \.node.id) { product in
                VStack(alignment: .leading, spacing: 10) {
                    AsyncImage(url: URL(string: product.node.thumbnail?.url ?? ""), content: { phase in
                        switch phase {
                        case .success(let image):
                            image.resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: 300, maxHeight: 100)
                        case .empty:
                            Image(systemName: "photo")
                        case .failure:
                            Image(systemName: "photo")
                            
                        @unknown default:
                            Image(systemName: "photo")
                        }
                    })
                    Text(product.node.name)
                        .font(.system(size: 14, weight: .bold, design: .default))
                        .foregroundColor(.black)
                    Text(product.node.category?.name ?? "")
                        .font(.system(size: 12, weight: .bold, design: .default))
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.all, 10)
            }
        }
        HStack() {
            Spacer()
            Button(action: {
                
            }) {
                Text("More ->")
            }
            .font(.caption)
            .foregroundColor(Constants.BlueberryGradientColors[0])
            .frame(width: 100, alignment: .trailing)
        }
    }
}

struct ProductHomeGridCell_Previews: PreviewProvider {
    static var previews: some View {
        let category: HomeViewQuery = HomeViewQuery(unsafeResultMap: [:])
        HomeSectionCategoryProductsGridCell(item: category)
    }
}
