//
// ProposalView.swift
// NounsDAOApp
//
// Created by PAVEL on 2023/08/29.
//

import SwiftUI

struct ProposalView: View {
    @ObservedObject var viewModel: ProposalViewModel
    
    var body: some View {
        ZStack {
            CirclesBlurBackground()
            ZStack {
                BoardCardView(firstColor: Color("a-mono"), secondColor: Color("a-mono"), startPoint: .leading, endPoint: .trailing, opacity: 0.4)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 5) {
                        if viewModel.isLoading {
                            LoadingView()
                        } else {
                            HStack {
                                Text(viewModel.id)
                                    .bold()
                                    .padding(2)
                                    .foregroundColor(Color("indexcard-text"))
                                Text(viewModel.status)
                                    .bold()
                                    .padding(2)
                                    .foregroundColor(Color("indexcard-text"))
                                    .background(
                                        Rectangle()
                                            .fill(statusColor(for: viewModel.status))
                                    )
                            }
                            Text(viewModel.title)
                                .font(.headline)
                                .foregroundColor(Color("indexcard-text"))
                            HStack {
                                VoteCountRow(label: "For", icon: "checkmark.circle.fill", color: Color("indexcard-blue"), count: viewModel.forVotes)
                                    .frame(width: 70, alignment: .leading)
                                VoteCountRow(label: "Against", icon: "xmark.circle.fill", color: Color("indexcard-red"), count: viewModel.againstVotes)
                                    .frame(width: 70, alignment: .leading)
                                VoteCountRow(label: "Abstain", icon: "a.circle.fill", color: Color("indexcard-gray"), count: viewModel.abstainVotes)
                                    .frame(width: 70, alignment: .leading)
                                Spacer()
                                VoteCountRow(label: "Quorum", icon: "q.circle.fill", color: Color("indexcard-gray"), count: viewModel.quorumVotes)
                                    .frame(width: 70, alignment: .leading)
                            }
                            LineShadingView(forVotes: viewModel.forVotes, againstVotes: viewModel.againstVotes, totalSupply: viewModel.totalSupply)
                                .frame(height: 5)
                                .background(Color.gray)
                            
                            // Text content
                            Text(viewModel.description)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.vertical, 5)
                                .background(Color.clear) // Optional background color
                                .overlay(
                                    MarkdownView(markdownText: viewModel.description)
                                        .frame(
                                            maxWidth: .infinity,
                                            alignment: .leading
                                        )
                                )
                        }
                    }
                    .padding(10)
                }
            }
            .onAppear {
                viewModel.fetchProposalInfo()
            }
            .padding(10)
        }
    }
}

struct ProposalView_Previews: PreviewProvider {
    static var previews: some View {
        ProposalView(viewModel: ProposalViewModel(proposalID: 1))
    }
}



