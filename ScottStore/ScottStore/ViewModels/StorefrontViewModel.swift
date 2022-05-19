//
//  StorefrontViewModel.swift
//  ScottStore
//
//  Created by Luis Gutierrez on 17/5/22.
//

import Foundation
import Apollo

typealias StoreFrontProductsQuery = FrontProductsQuery.Data.Product.Edge

final class StorefrontViewModel: ObservableObject {
    
    @Published var frontProducts: [StoreFrontProductsQuery] = []
    
    init() {
        fetch()
    }
    
    func fetch() {
        Network.shared.apollo.fetch(query: FrontProductsQuery()) { result in
            switch result {
            case .success(let frontProductsQuery):
                guard let data = frontProductsQuery.data else { return }
                guard let products = data.products else { return }
                self.frontProducts = products.edges
                

            case .failure(let error):
                print(error)
            }
        }
    }
}
