//
//  StorefrontViewModel.swift
//  ScottStore
//
//  Created by Luis Gutierrez on 17/5/22.
//

import Foundation
import Apollo

typealias HomeViewQuery = HomeStoreFrontQuery.Data.Category.Edge

final class StorefrontViewModel: ObservableObject {
    
    @Published var homeViewCategoriesProductsList: [HomeViewQuery] = []
    
    init() {
        fetch()
    }
    
    func fetch() {
        Network.shared.apollo.fetch(query: HomeStoreFrontQuery()) { result in
            switch result {
            case .success(let frontProductsQuery):
                guard let data = frontProductsQuery.data else { return }
                guard let category = data.categories else { return }
                
                self.homeViewCategoriesProductsList = category.edges
                
            case .failure(let error):
                print(error)
            }
        }
    }
}
