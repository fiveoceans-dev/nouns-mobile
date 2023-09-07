//
//  NounAuctionModel.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/13.
//

import Foundation
import NounsAPI

struct NounAuctionModel: Codable {
    // MARK: - Properties
    var auctionID: Int
    var auctionBid: String
    var bidderID: ID?
    
    var startTime: Int
    var endTime: Int
    var timeStamp: Int
    
    var bids: [BidInfo]
    
    // MARK: - Nested Types
    struct BidInfo: Codable, Identifiable {
        var id: String
        var bidderID: String
        var amount: String
    }
    
    // MARK: - Initialization
    init() {
        auctionID = 0
        auctionBid = "Ξ 0"
        bidderID = nil
        startTime = 0
        endTime = 0
        timeStamp = 0
        bids = []
    }
    
    // MARK: - Private Methods
    func formatBidAmount(_ amount: String) -> String {
        if let bidAmount = Double(amount) {
            let formattedAmount = String(format: "%.2f", bidAmount / 1_000_000_000_000_000_000)
            return "Ξ \(formattedAmount)"
        }
        return amount
    }
}
