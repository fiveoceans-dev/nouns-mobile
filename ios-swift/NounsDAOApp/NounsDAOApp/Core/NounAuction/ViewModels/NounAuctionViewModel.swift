//  NounAuctionViewModel.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/13.
//

import Foundation
import NounsAPI
import Apollo

class NounAuctionViewModel: ObservableObject {
    // MARK: - Properties
    @Published private(set) var model: NounAuctionModel
    @Published var countdownText: String = "00:00:00"
    
    private let apiService: NetworkNouns
    private var countdownTimer: Timer?
    private var timeSinceLastFetch: Int = 0
    
    // MARK: - Computed Properties
    var auctionID: Int { model.auctionID }
    var auctionBid: String { model.auctionBid }
    var startTime: Int { model.startTime }
    var endTime: Int { model.endTime }
    var timeStamp: Int { model.timeStamp }
    var bids: [NounAuctionModel.BidInfo] { model.bids }
    
    var largestBid: String {
        let maxBid = bids.max { a, b in
            return Double(a.amount) ?? 0 < Double(b.amount) ?? 0
        }
        return maxBid?.amount ?? "Ξ 0"
    }
    
    // MARK: - Init
    public init(model: NounAuctionModel, apiService: NetworkNouns = NetworkNouns.shared) {
        self.model = model
        self.apiService = apiService
        startCountdown()
    }
    
    deinit {
        countdownTimer?.invalidate()
    }
    
    // MARK: - Timers and Countdown
    private func startCountdown() {
        countdownTimer?.invalidate()
        
        countdownTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] _ in
            guard let self = self else { return }
            self.updateCountdown()
        }
    }
    
    private func updateCountdown() {
        
        let currentTime = Int(Date().timeIntervalSince1970)
        let remainingTime = model.endTime - currentTime
        
        if remainingTime < 0 {
            self.countdownText = "SOLD!"
            checkAndFetchData()
            print("remainingTime < 0 ")
            print("remainingTime >= 299")
        } else if remainingTime >= 299 {
            let hours = remainingTime / 3600
            let minutes = (remainingTime % 3600) / 60
            let seconds = (remainingTime % 60)
            self.countdownText = String(format: "%02d:%02d:%02d", hours, minutes, seconds)
        } else if remainingTime < 299 {
            checkAndFetchData()
            let hours = remainingTime / 3600
            let minutes = (remainingTime % 3600) / 60
            let seconds = (remainingTime % 60)
            print("remainingTime < 299")
            self.countdownText = String(format: "%02d:%02d:%02d", hours, minutes, seconds)
        }
        
        print("Countdown: \(self.countdownText)")
        print("currentTime: \(currentTime)")
        print("remainingTime: \(remainingTime)")
    }
    
    func checkAndFetchData() {
        timeSinceLastFetch += 1
        print("timeSinceLastFetch: \(self.timeSinceLastFetch)")
        if timeSinceLastFetch >= 10 {
            timeSinceLastFetch = 0
            Task {
                do {
                    try await fetchAuctionData()
                } catch {
                    print("Error fetching new auction data: \(error)")
                }
            }
        }
    }
    
    // MARK: - API Calls
    func fetchAuctionData() async throws {
        try await withCheckedThrowingContinuation { continuation in
            apiService.apollo.fetch(query: CurrentAuctionQuery()) { result in
                switch result {
                case .success(let graphQLResult):
                    if let data = graphQLResult.data {
                        DispatchQueue.main.async {
                            let updatedModel = self.processAuctionData(data)
                            self.model = updatedModel
                            self.startCountdown()
                        }
                    } else if graphQLResult.errors != nil {
                        print("fetchAuctionData: GraphQL errors received")
                    }
                    continuation.resume(returning: ())
                case .failure(let error):
                    print("fetchAuctionData: Failed with error \(error)")
                    continuation.resume(throwing: error)
                }
            }
        }
    }
    
    private func processAuctionData(_ data: CurrentAuctionQuery.Data) -> NounAuctionModel {
        var updatedModel = model
        if let auction = data.auctions.first {
            updatedModel.auctionID = Int(auction.id) ?? 0
            updatedModel.startTime = Int(auction.startTime) ?? 0
            updatedModel.endTime = Int(auction.endTime) ?? 0
            
            if let blockTimestamp = data._meta?.block.timestamp {
                updatedModel.timeStamp = blockTimestamp
            }
            let updatedBids: [NounAuctionModel.BidInfo] = auction.bids.map { bid in
                return NounAuctionModel.BidInfo(id: UUID().uuidString, bidderID: bid.bidder?.id ?? "", amount: updatedModel.formatBidAmount(bid.amount))
            }
            updatedModel.bids = updatedBids.sorted { Double($0.amount) ?? 0 > Double($1.amount) ?? 0 }
        }
        return updatedModel
    }
}
