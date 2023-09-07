//
//  Network.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/06/13.
//

import Apollo
import Foundation


final class NetworkPropHouse {
    
    static let shared = NetworkPropHouse()
    
    private(set) lazy var apollo = ApolloClient(url: URL(string: "https://main--prophouse.apollographos.net/graphql")!)
    private init() {}

}



