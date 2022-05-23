//
//  CategoriesView.swift
//  ScottStore
//
//  Created by Luis Gutierrez on 12/5/22.
//

import SwiftUI

struct CategoriesView: View {
    @ObservedObject var categoriesVM: CategoryViewModel
    
    init() {
        let categoriesVM1: CategoryViewModel = CategoryViewModel()
        categoriesVM = categoriesVM1
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(categoriesVM.categories, id: \.node.id) { cat in
                    Section(header: Text(cat.node.name)) {
                        ForEach(cat.node.children!.edges, id: \.node.id) { subCats in
                            Text(subCats.node.name)
                        }
                    }
                    
                }
            }
            .listStyle(SidebarListStyle())
            .navigationBarTitle("Categories")
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        let categoriesVM = CategoryViewModel()
        CategoriesView()
            .onAppear(){
                CategoryViewModel().fetch()
            }
    }
}
