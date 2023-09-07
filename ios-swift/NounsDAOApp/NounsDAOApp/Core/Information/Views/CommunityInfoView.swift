//
//  CommunityInfoView.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/27.
//

import SwiftUI

struct CommunityInfoView: View {
    var body: some View {
        ZStack {
            CirclesBlurBackground()
            ScrollView {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.white)
                        .frame(height: 300)
                        .ignoresSafeArea(edges: .top)
                    BoardCardView(firstColor: Color(.blue), secondColor: Color(.white), startPoint: .top, endPoint: .bottom, opacity: 0.4)
                    Image("Info-1")
                        .frame(width: 25, height: 25)
                }
                VStack(alignment: .leading) {
                    Text("Community Information")
                        .font(.title)
                    Divider()

                    HStack(alignment: .top) {
                        Text("Nouners")
                            .font(.title2)
                            .frame(width: 110)
                        Text("Anyone who owns a noun is referred to as a 'Nouner,' derived from the combined words 'noun' and 'owner'. Nouner's participate in a democratic and decentralized manner to collectively decide the direction of the DAO and how to allocate the treasury. Owning a noun grants you one vote; however, many Nouners opt to own multiple nouns. Owning multiple nouns carries additional benefits, including the right to submit proposals for consideration by the DAO. \nInitially, one noun was sufficient to submit a proposal. However, the DAO decided to raise the proposal submission threshold, which now requires ownership of three nouns. Nonetheless, alternative methods exist to submit a proposal. For instance, you can request someone else to temporarily delegate their noun to you, allowing you to meet the proposal submission threshold.")
                    }
                    Divider()
                    HStack(alignment: .top) {
                        Text("Nounders")
                            .font(.title2)
                            .frame(width: 110)
                        VStack(alignment: .leading) {
                            Text("Nounders is a derived word from the combined of 'nouns' and 'founders'. Nounders is a group of 10 people who consider themselves 3.5 artists and 6.5 technologists. On August 8th, 2021, the Nounders launched NounsDAO. The project immediately caught the attention of NFT and blockchain enthusiasts due to its clean pixel art and elegant smart contracts code. The rest is history")
                            Text("You can learn more about nounders at ")
                            Link("nouns.wtf/nounders", destination: URL(string: "https://nouns.wtf/nounders")!)
                                .foregroundColor(.blue)
                        }
                    }
                }
            }
            .padding(10)
        }
    }
}

struct CommunityInfoView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityInfoView()
    }
}
