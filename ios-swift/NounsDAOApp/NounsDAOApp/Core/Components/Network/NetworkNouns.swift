//
//  NetworkNouns.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/08.
//
// Nouns1

import Apollo
import Foundation


final class NetworkNouns {
    
    static let shared = NetworkNouns()
    
    private(set) lazy var apollo = ApolloClient(url: URL(string: "https://main--NounsV3.apollographos.net/graphql")!)
    private init() {}

}
