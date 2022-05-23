//
//  CategoryViewModel.swift
//  ScottStore
//
//  Created by Luis Gutierrez on 22/5/22.
//

import Foundation
import Apollo

typealias Category = AskCategoriesQuery.Data.Category.Edge

final class CategoryViewModel: ObservableObject {
    
    @Published var categories: [Category] = []
    
    init() {
        fetch()
    }
    
    func fetch() {
        Network.shared.apollo.fetch(query: AskCategoriesQuery()) { result in
            switch result {
            case .success(let categoriesQuery):
                guard let data = categoriesQuery.data else { return }
                guard let category = data.categories else { return }
                
                self.categories = category.edges
                
            case .failure(let error):
                print(error)
            }
        }
    }
}
