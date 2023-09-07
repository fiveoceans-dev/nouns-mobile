//
//  NounProposalsCandidatesView.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/28.
//

import SwiftUI

struct NounProposalsCandidatesView: View {
    @StateObject private var viewModel = NounProposalsCandidatesViewModel()
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
                        ForEach(viewModel.proposalCandidates.reversed()) { proposal in
                            proposalCandidateRowView(candidate: proposal, count: 0)
                                .onTapGesture {
                                    selectedProposalID = Int(proposal.id)
                                    isProposalViewPresented = true
                                }
                        }
                    }
                }
            }
        }
        .sheet(isPresented: $isProposalViewPresented) {
            if let proposalID = selectedProposalID {
                ProposalView(viewModel: ProposalViewModel(proposalID: proposalID))
            }
        }
        .onAppear {
            viewModel.fetchProposalCandidates()
        }
        .padding(10)
    }
}

struct proposalCandidateRowView: View {
    var candidate: NounProposalsCandidatesModel
    var count: Int
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    Text("CANDIDATE")
                        .bold()
                        .padding(2)
                        .foregroundColor(Color("indexcard-text"))
                        .background(
                            Rectangle()
                                .fill(statusColor(for: "CANDIDATE"))
                        )
                }
                Text(candidate.latestVersion.content.title)
                    .font(.headline)
                    .foregroundColor(Color("indexcard-text"))
                    .lineLimit(nil)
                HStack {
                    VoteCountRow(label: "For", icon: "checkmark.circle.fill", color: Color("indexcard-blue"), count: "")
                        .frame(width: 70, alignment: .leading)
                    VoteCountRow(label: "Against", icon: "xmark.circle.fill", color: Color("indexcard-red"), count: "")
                        .frame(width: 70, alignment: .leading)
                    VoteCountRow(label: "Abstain", icon: "a.circle.fill", color: Color("indexcard-gray"), count: "")
                        .frame(width: 70, alignment: .leading)
                    Spacer()
                    VoteCountRow(label: "Quorum", icon: "q.circle.fill", color: Color("indexcard-gray"), count: "")
                        .frame(width: 70, alignment: .leading)
                }
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(height: 5)
            }
            .padding(10)
        }
    }
}


struct NounProposalsCandidatesView_Previews: PreviewProvider {
    static var previews: some View {
        NounProposalsCandidatesView()
    }
}

