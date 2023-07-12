//
//  StationListViewModel.swift
//  ChargeTrip GraphQL
//
//  Created by Vincenzo Pascarella on 11/07/23.
//

import Foundation
import Apollo
import ChargeTripAPI

@MainActor
final class StationListViewModel: ObservableObject {
    
    @Published var stationList: [StationListQuery.Data.StationList] = []
    
    func loadStations() {
        Network.shared.apollo.fetch(query: StationListQuery()) { [weak self] result in
            guard let self = self else {
                return
            }
            
            switch result {
                
            case .success(let graphQLResult):
                // check the `data` property
                if let stationConnection = graphQLResult.data?.stationList {
                    self.stationList.append(contentsOf: stationConnection.compactMap({ $0 }))
                }
                
                if let errors = graphQLResult.errors {
                    print(errors)
                }
                
            case .failure(let error):
                print(error)
            }
            
        }
    }
    
    func address(of station: StationListQuery.Data.StationList) -> String {
        var fullAddress = ""
        if let address = station.address {
            fullAddress.append(address)
        }
        if let city = station.city {
            fullAddress.append(", \(city)")
        }
        
        return fullAddress
    }
    
    func ownerName(of station: StationListQuery.Data.StationList) -> String {
        station.owner?.name ?? "Unknowed owner"
    }
    
}
