//
//  FeedInfoView.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/27.
//

import SwiftUI

struct FeedInfoView: View {
    var body: some View {
        
        ZStack {
            CirclesBlurBackground()
            ScrollView {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.white)
                        .frame(height: 300)
                        .ignoresSafeArea(edges: .top)
                    BoardCardView(firstColor: Color(.green), secondColor: Color(.white), startPoint: .top, endPoint: .bottom, opacity: 0.4)
                    Image("Info-1")
                        .frame(width: 25, height: 25)
                }
                VStack(alignment: .leading) {
                    Text("Feed Information")
                        .font(.title)
                    Divider()
                    HStack(alignment: .top) {
                        Text("What is nouns?")
                            .font(.title2)
                            .frame(width: 100)
                        Text("Behold, an infinite work of art! Nouns is a community-owned brand that makes a positive impact by funding ideas and fostering collaboration. From collectors and technologists, to non-profits and brands, Nouns is for everyone.")
                    }
                    Divider()
                    HStack(alignment: .top) {
                        Text("Art")
                            .font(.title2)
                            .frame(width: 100)
                        Text("Nouns are generated randomly based Ethereum block hashes. There are no 'if' statements or other rules governing Noun trait scarcity, which makes all Nouns equally rare. The Noun Seeder contract is used to determine Noun traits during the minting process. The seeder contract can be replaced to allow for future trait generation algorithm upgrades. Additionally, it can be locked by the Nouns DAO to prevent any future updates.")
                    }
                    Divider()
                    HStack(alignment: .top) {
                        Text("NFT")
                            .font(.title2)
                            .frame(width: 100)
                        Text("The Nouns Auction Contract will act as a self-sufficient Noun generation and distribution mechanism, auctioning one Noun every 24 hours, forever. 100% of auction proceeds (ETH) are automatically deposited in the Nouns DAO treasury, where they are governed by Noun owners. Each time an auction is settled, the settlement transaction will also cause a new Noun to be minted and a new 24 hour auction to begin. While settlement is most heavily incentivized for the winning bidder, it can be triggered by anyone, allowing the system to trustlessly auction Nouns as long as Ethereum is operational and there are interested bidders.")
                    }
                }
            }
            .padding(10)
        }
    }
}

struct FeedInfoView_Previews: PreviewProvider {
    static var previews: some View {
        FeedInfoView()
    }
}
