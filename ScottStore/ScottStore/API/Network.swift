//
//  Netword.swift
//  ScottStore
//
//  Created by Luis Gutierrez on 11/5/22.
//

import Foundation
import Apollo

class Network {
    static let shared = Network()
    
    private(set) lazy var apollo: ApolloClient = {
        let cache = InMemoryNormalizedCache()
        let store1 = ApolloStore(cache: cache)
        
        let defaults = UserDefaults.standard
        
        var headerAuthValue = ""
        
        if let token = defaults.value(forKey: "jwt") {
            headerAuthValue = "JWT \(token)"
        }
        
        let authPayloads = ["Authorization": headerAuthValue]
        let configuration = URLSessionConfiguration.default
        configuration.httpAdditionalHeaders = authPayloads
        
        let client1 = URLSessionClient(sessionConfiguration: configuration, callbackQueue: nil)
        let provider = NetworkInterceptorProvider(client: client1, shouldInvalidateClientOnDeinit: true, store: store1)
        
        let url = URL(string: "http://localhost:8000/graphql/")!
        
        let requestChainTransport = RequestChainNetworkTransport(interceptorProvider: provider,
                                                                 endpointURL: url)
        
        return ApolloClient(networkTransport: requestChainTransport,
                            store: store1)
    }()
}

class NetworkInterceptorProvider: DefaultInterceptorProvider {
    override func interceptors<Operation: GraphQLOperation>(for operation: Operation) -> [ApolloInterceptor] {
        var interceptors = super.interceptors(for: operation)
        interceptors.insert(CustomInterceptor(), at: 0)
        return interceptors
    }
}

class CustomInterceptor: ApolloInterceptor {
    
    func interceptAsync<Operation: GraphQLOperation>(
        chain: RequestChain,
        request: HTTPRequest<Operation>,
        response: HTTPResponse<Operation>?,
        completion: @escaping (Swift.Result<GraphQLResult<Operation.Data>, Error>) -> Void) {
            let defaults = UserDefaults.standard
            var headerAuthValue = ""
            
            if let token = defaults.value(forKey: "jwt") {
                headerAuthValue = "JWT \(token)"
            }
            
            request.addHeader(name: "Authorization", value: headerAuthValue)
            
            print("request :\(request)")
            print("response :\(String(describing: response))")
            
            chain.proceedAsync(request: request,
                               response: response,
                               completion: completion)
        }
}
