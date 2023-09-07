//
//  NounAuctionView.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/10.
//

import SwiftUI

struct NounAuctionView: View {
    @EnvironmentObject var auctionViewModel: NounAuctionViewModel
    @State private var rotation: Double = 0
    
    var body: some View {
        ZStack {
            BoardCardView(firstColor: Color("a-mono"), secondColor: Color("a-mono"), startPoint: .leading, endPoint: .trailing, opacity: 0.4)
            VStack {
                HStack(alignment: .top) {
                    auctionView
                    auctionBidsView
                }
            }
            .padding(10)
            .task {
                do {
                    try await auctionViewModel.fetchAuctionData()
                } catch {
                    print("Error: \(error)")
                }
            }
        }
    }
}

extension NounAuctionView {
    var auctionView: some View {
        HStack(spacing: 1) {
            ZStack {
                VStack(spacing: 1) {
                    Text("Noun \(String(auctionViewModel.auctionID))")
                        .bold()
                        .foregroundColor(Color("indexcard-text"))
                    ZStack {
                        rotationFrame
                        NounView(auctionID: auctionViewModel.auctionID)
                            .frame(width: 180, height: 180)
                            .cornerRadius(15)
                            .offset(x: 3, y: 3)
                    }
                    .frame(width: 180, height: 180)
                    Text(String(auctionViewModel.largestBid))
                        .bold()
                        .foregroundColor(Color("indexcard-text"))
                        .offset(y: 6)
                }
            }
        }
    }
}

extension NounAuctionView {
    var auctionBidsView: some View {
        HStack(spacing: 1) {
            ZStack {
                VStack(spacing: 1) {
                    Text(" ")
                        .bold()
                        .foregroundColor(Color("indexcard-text"))
                    ZStack(alignment: .top) {
                        Rectangle()
                            .foregroundColor(Color("a-mono"))
                            .frame(height: 180)
                            .cornerRadius(14)
                        VStack(alignment: .leading) {
                            Text("Auction: \(auctionViewModel.countdownText)")
                                .bold()
                                .foregroundColor(Color("indexcard-text"))
                            Spacer()
                            Text("Bids:")
                                .bold()
                                .foregroundColor(Color("indexcard-text"))
                                .padding(.bottom, -5)
                            ScrollView(.horizontal, showsIndicators: false) {
                                ScrollView(.vertical, showsIndicators: false) {
                                    VStack(alignment: .leading) {
                                        ForEach(auctionViewModel.bids) { bid in
                                            HStack {
                                                Text(bid.amount)
                                                    .foregroundColor(Color("indexcard-text"))
                                                Text(bid.bidderID)
                                                    .foregroundColor(Color("indexcard-text"))
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        .padding(5)
                    }
                }
            }
        }
    }
}

extension NounAuctionView {
    var auctionSoldView: some View {
        HStack(spacing: 1) {
            ZStack {
                Rectangle()
                    .foregroundColor(Color.blue.opacity(0.2))
                    .cornerRadius(15)
                VStack(alignment: .center, spacing: 1) {
                    Text("Auction: \(auctionViewModel.countdownText)")
                        .bold()
                        .foregroundColor(Color("indexcard-text"))
                }
                .padding(5)
            }
        }
    }
}

extension NounAuctionView {
    var rotationFrame: some View {
        VStack {
            GeometryReader { geometry in
                ZStack {
                    Circle()
                        .fill(Color.orange)
                        .frame(width: 330, height: 330)
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: 50, height: 330)
                }
                .frame(width: 186, height: 186)
                .rotationEffect(.degrees(rotation))
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .onAppear {
                    withAnimation(Animation.linear(duration: 5).repeatForever(autoreverses: false)) {
                        rotation = 360
                    }
                }
            }
        }
    }
}

struct NounAuctionView_Previews: PreviewProvider {
    static var previews: some View {
        let previewViewModel = NounAuctionViewModel(model: NounAuctionModel())
        
        print("New Instance Variables:")
        print("Auction ID: \(previewViewModel.auctionID)")
        print("Largest Bid: \(previewViewModel.largestBid)")
        print("Countdown Text: \(previewViewModel.countdownText)")
        print("Bids Count: \(previewViewModel.bids.count)")
        
        return NounAuctionView()
            .environmentObject(previewViewModel)
    }
}

