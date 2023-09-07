//
//  NounOngoingProposalsView.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/22.
//

import SwiftUI
struct NounOngoingProposalsView: View {
    @StateObject private var viewModel = NounOngoingProposalsViewModel()
    
    @State private var isProposalViewPresented = false
    @State private var selectedProposalID: Int?
    
    var body: some View {
        let width: CGFloat = 250
        ScrollView(.vertical, showsIndicators: false) {
            ZStack {
                BoardCardView(firstColor: Color("a-mono"), secondColor: Color("a-mono"), startPoint: .leading, endPoint: .trailing, opacity: 0.4)
                if viewModel.isLoading {
                    LoadingView()
                } else {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: width))]) {
                        ForEach(viewModel.proposals) { proposal in
                            ongoingProposalRowView(proposal: proposal)
                                .onTapGesture {
                                    print("pressed \(proposal.id)")
                                    selectedProposalID = Int(proposal.id)
                                    isProposalViewPresented = true
                                }
                        }
                        .sheet(isPresented: $isProposalViewPresented) {
                            if let proposalID = selectedProposalID {
                                ProposalView(viewModel: ProposalViewModel(proposalID: proposalID))
                            }
                        }
                    }
                }
            }
            .onAppear {
                viewModel.fetchOngoingProposalsData()
            }
        }
    }
}

struct ongoingProposalRowView: View {
    var proposal: NounOngoingProposalsModel
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    Text("\(proposal.id).")
                        .bold()
                        .foregroundColor(Color("indexcard-text"))
                    
                    Text(proposal.status)
                        .bold()
                        .foregroundColor(Color("indexcard-text"))
                        .background(
                            Rectangle()
                                .fill(statusColor(for: proposal.status))
                        )
                }
                HStack {
                    Text(proposal.title)
                        .font(.headline)
                        .foregroundColor(Color("indexcard-text"))
                }
                VStack {
                    HStack {
                        VoteCountRow(label: "For", icon: "checkmark.circle.fill", color: Color("indexcard-blue"), count: proposal.forVotes)
                            .frame(width: 70, alignment: .leading)
                        VoteCountRow(label: "Against", icon: "xmark.circle.fill", color: Color("indexcard-red"), count: proposal.againstVotes)
                            .frame(width: 70, alignment: .leading)
                        VoteCountRow(label: "Abstain", icon: "a.circle.fill", color: Color("indexcard-gray"), count: proposal.abstainVotes)
                            .frame(width: 70, alignment: .leading)
                        Spacer()
                        VoteCountRow(label: "Quorum", icon: "q.circle.fill", color: Color("indexcard-gray"), count: proposal.quorumVotes)
                            .frame(width: 70, alignment: .leading)
                    }
                    LineShadingView(forVotes: proposal.forVotes, againstVotes: proposal.againstVotes,  totalSupply: proposal.totalSupply)
                        .frame(height: 5)
                        .background(Color.gray)
                        .padding(.bottom, 6)
                }
            }
            .padding(10)
        }
    }
}


struct NounOngoingProposalsView_Previews: PreviewProvider {
    static var previews: some View {
        NounOngoingProposalsView()
    }
}
