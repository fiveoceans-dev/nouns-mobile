//
//  NounOngoingProposalsViewModel.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/22.
//

import Foundation
import Apollo
import NounsAPI

class NounOngoingProposalsViewModel: ObservableObject {
    @Published var proposals: [NounOngoingProposalsModel] = []
    @Published var isLoading = false

    func fetchOngoingProposalsData() {
        isLoading = true
        NetworkNouns.shared.apollo.fetch(query: AllOngoingProposalsQuery()) { result in
            switch result {
            case .success(let graphQLResult):
                if let data = graphQLResult.data {
                    self.proposals = data.proposals.compactMap { proposalData in
                        let endBlock = Int(proposalData.endBlock) ?? 0
                        let currentBlockNumber = Int(data._meta?.block.number ?? 0)
                        let startBlock = Int(proposalData.startBlock) ?? 0

                        let status: String
                        if currentBlockNumber > startBlock {
                            status = "ACTIVE"
                        } else {
                            status = proposalData.status.rawValue
                        }
                        
                        if endBlock - currentBlockNumber > 0 {
                            return NounOngoingProposalsModel(
                                id: proposalData.id,
                                title: proposalData.title,
                                status: status,
                                forVotes: proposalData.forVotes.description,
                                againstVotes: proposalData.againstVotes.description,
                                abstainVotes: proposalData.abstainVotes.description,
                                quorumVotes: proposalData.quorumVotes.description,
                                totalSupply: proposalData.totalSupply.description,
                                startBlock: proposalData.startBlock.description,
                                endBlock: proposalData.endBlock.description,
                                timestamp: data._meta?.block.timestamp ?? 0
                            )
                        } else {
                            return nil
                        }
                    }
                } else if let errors = graphQLResult.errors {
                    print("GraphQL Errors: \(errors)")
                }
            case .failure(let error):
                print("Network Error: \(error)")
            }
            self.isLoading = false
        }
    }
}

