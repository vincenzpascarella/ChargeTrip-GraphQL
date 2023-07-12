//
//  AuthorizationInterceptor.swift
//  ChargeTrip GraphQL
//
//  Created by Vincenzo Pascarella on 11/07/23.
//

import Foundation
import Apollo
import ApolloAPI

class AuthorizationInterceptor: ApolloInterceptor {
    // Any custom interceptors you use are required to be able to identify themselves through an id property.
    public var id: String = UUID().uuidString
    
    func interceptAsync<Operation>(
        chain: RequestChain,
        request: HTTPRequest<Operation>,
        response: HTTPResponse<Operation>?,
        completion: @escaping (Result<GraphQLResult<Operation.Data>, Error>) -> Void
    ) where Operation : GraphQLOperation {
        let keys = AuthorizationKeys(
            clientID: "YOUR_CLIENT_ID_KEY",
            appID: "YOUR_APP_ID_KEY"
        )
        
        request.addHeader(name: keys.clientID.name, value: keys.clientID.value)
        request.addHeader(name: keys.appID.name, value: keys.appID.value)
                
        chain.proceedAsync(request: request,
                           response: response,
                           interceptor: self,
                           completion: completion)
    }
    
}
