//
//  NounProposalsViewModel.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/22.
//

import Foundation
import Apollo
import NounsAPI

class NounProposalsViewModel: ObservableObject {
    @Published var proposals: [NounProposalsModel] = []
    @Published var isLoading = false
    
    func fetchProposals() {
        isLoading = true

        NetworkNouns.shared.apollo.fetch(query: AllProposalsQuery()) { result in
            switch result {
            case .success(let graphQLResult):
                if let data = graphQLResult.data {
                    self.proposals = data.proposals.map { proposalData in
                        NounProposalsModel(
                            id: proposalData.id,
                            title: proposalData.title,
                            status: proposalData.status.rawValue,
                            forVotes: proposalData.forVotes.description,
                            againstVotes: proposalData.againstVotes.description,
                            abstainVotes: proposalData.abstainVotes.description,
                            quorumVotes: proposalData.quorumVotes.description,
                            totalSupply: proposalData.totalSupply.description
                        )
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







