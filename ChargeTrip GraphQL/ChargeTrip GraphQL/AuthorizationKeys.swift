//
//  AuthorizationKeys.swift
//  ChargeTrip GraphQL
//
//  Created by Vincenzo Pascarella on 11/07/23.
//

import Foundation

struct AuthorizationKeys {
    
    let clientID: XClientID
    let appID: XAppID
    
    init(clientID: String, appID: String){
        self.clientID = .init(value: clientID)
        self.appID = .init(value: appID)
    }
    
    struct XClientID {
        let name: String = "x-client-id"
        let value: String
    }

    struct XAppID {
        let name: String = "x-app-id"
        let value: String
    }
}
