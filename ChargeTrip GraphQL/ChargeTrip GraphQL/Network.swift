//
//  Network.swift
//  ChargeTrip GraphQL
//
//  Created by Vincenzo Pascarella on 11/07/23.
//

import Foundation
import Apollo

class Network {
    static let shared = Network()
    
    private init() {}
    
    private(set) lazy var apollo: ApolloClient = {
        let client = URLSessionClient()
        let cache = InMemoryNormalizedCache()
        let store = ApolloStore(cache: cache)
        let provider = NetworkInterceptorProvider(client: client, store: store)
        let url = URL(string: "https://api.chargetrip.io/graphql")!
        let transport = RequestChainNetworkTransport(interceptorProvider: provider, endpointURL: url)
        
        return ApolloClient(networkTransport: transport, store: store)
    }()
}
