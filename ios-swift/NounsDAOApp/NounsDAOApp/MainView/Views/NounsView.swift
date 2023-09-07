//
//  NounsView.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/07/15.
//

import SwiftUI
import Foundation


struct NounsView: View {
    @EnvironmentObject var auctionViewModel: NounAuctionViewModel
    
    @State private var lastRefreshTime = Date()
    @State private var isRefreshing = false
    
    var body: some View {
        ZStack {
            CirclesBlurBackground()
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    if isRefreshing {
                        Text("Updating...")
                            .foregroundColor(.gray)
                            .font(.footnote)
                    }
                    LazyVStack(spacing: 5) {
                        NounAuctionView()
                        NounMarketView()
                        NounOngoingProposalsView()
                    }
                    .padding(5)
                }
            }
            .refreshable {
                isRefreshing = true
                Task {
                    do {
                        try await Task.sleep(nanoseconds: 2_000_000_000)
                        print("Attempting to fetch data")
                        try await auctionViewModel.fetchAuctionData()
                        print("Successfully fetched data")
                        lastRefreshTime = Date()
                    } catch {
                        print("Error refreshing data: \(error)")
                    }
                    isRefreshing = false
                }
            }
        .padding(5)
        }
    }
}

struct RefreshHeader: View {
    @Binding var isRefreshing: Bool
    var lastRefreshTime: Date
    
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("Last Updated: \(lastRefreshTime, formatter: dateFormatter)")
                .foregroundColor(.gray)
                .font(.footnote)
        }
        .padding(.top, 5)
    }
    
    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }()
}

class Item {
    var value: Int
    
    init(value: Int) {
        self.value = value
    }
}

struct ItemWrapped: Identifiable {
    let id = UUID()
    var wrapped: Item
}

struct NounsView_Previews: PreviewProvider {
    static var previews: some View {
        NounsView().environmentObject(NounAuctionViewModel(model: NounAuctionModel()))
    }
}
