//
//  LoginVM.swift
//  ScottStore
//
//  Created by Luis Gutierrez on 11/5/22.
//

import Foundation
import Apollo
final class LoginViewModel: ObservableObject {

    func login(email: String, password: String, success: @escaping (GraphQLResult<LoginUserMutation.Data>) -> (), failure: @escaping (Error) -> ()) {
        Network.shared.apollo.perform(mutation: LoginUserMutation(email: email, password: password)) { result in
            switch result {
            case .success(let graphQLResult):
                success(graphQLResult)
            
            case .failure(let error):
                failure(error)
            
            }
        }
    }
    
    func logout(success: @escaping (GraphQLResult<DeleteAllTokensMutation.Data>) -> (), failure: @escaping (Error) -> ()) {
        Network.shared.apollo.perform(mutation: DeleteAllTokensMutation()) { result in
            switch result {
            case .success(let graphQLResult):
                success(graphQLResult)
            
            case .failure(let error):
                failure(error)
            
            }
        }
    }

}
