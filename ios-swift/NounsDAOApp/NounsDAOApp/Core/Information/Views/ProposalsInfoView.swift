//
//  ProposalsInfoView.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/27.
//

import SwiftUI

struct ProposalsInfoView: View {
    var body: some View {
        ZStack {
            CirclesBlurBackground()
            ScrollView {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.white)
                        .frame(height: 300)
                        .ignoresSafeArea(edges: .top)
                    BoardCardView(firstColor: Color(.yellow), secondColor: Color(.white), startPoint: .top, endPoint: .bottom, opacity: 0.4)
                    Image("Info-1")
                        .frame(width: 25, height: 25)
                }
                VStack(alignment: .leading) {
                    Text("Proposals")
                        .font(.title)
                    HStack(alignment: .top) {
                        Text("In this tab, you can track information about ongoing and past proposals. You can see time when voting starts and see who votes for and against proposals to allocate the treassury.")
                    }
                    Divider()
                    HStack(alignment: .top) {
                        Text("Treasury")
                            .font(.title2)
                            .frame(width: 100)
                        Text("100% of auction proceeds (ETH) are automatically deposited in the Nouns DAO treasury. Noun is an irrevocable member of Nouns DAO and entitled to one vote in all governance matters.")
                    }
                    Divider()
                    HStack(alignment: .top) {
                        Text("Proposals")
                            .font(.title2)
                            .frame(width: 100)
                        Text("Only Nouners can submit official proposals to the DAO for funding. However, nouns are delegatable, which means you can assign your vote/right to someone else as long as you own your Noun. Currently, owning three nouns is required to be able to submit a proposal.")
                    }
                    Divider()
                    HStack(alignment: .top) {
                        Text("Voting")
                            .font(.title2)
                            .frame(width: 100)
                        Text("After the proposal submission, the DAO will hold a vote and collectively decide whether to allocate treasury funds. The voting period is five days, preceding by 5 days of voting silence. After the voting period ends and the proposal gathers sufficient votes, the funds are sent permissionlessly.")
                    }
                }
            }
            .padding(10)
        }

    }
}

struct ProposalsInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ProposalsInfoView()
    }
}
