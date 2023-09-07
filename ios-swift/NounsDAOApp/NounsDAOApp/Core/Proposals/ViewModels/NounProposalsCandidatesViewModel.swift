//
//  NounProposalsCandidatesViewModel.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/29.
//

import Foundation
import Apollo
import NounsAPI

class NounProposalsCandidatesViewModel: ObservableObject {
    @Published var proposalCandidates: [NounProposalsCandidatesModel] = []
    @Published var isLoading = false
    
    func fetchProposalCandidates() {
        isLoading = true

        NetworkNouns.shared.apollo.fetch(query: AllProposalsCandidatesQuery()) { [weak self] result in
            guard let self = self else { return }

            switch result {
            case .success(let graphQLResult):
                if let data = graphQLResult.data {
                    DispatchQueue.main.async {
                        self.proposalCandidates = data.proposalCandidates.map { candidateData in
                            let signatures = candidateData.latestVersion.content.signatures ?? []
                            return NounProposalsCandidatesModel(
                                id: candidateData.id,
                                proposer: candidateData.proposer,
                                latestVersion: NounProposalsCandidatesModel.ProposalVersion(
                                    id: candidateData.latestVersion.id,
                                    content: NounProposalsCandidatesModel.ProposalContent(
                                        title: candidateData.latestVersion.content.title,
                                        proposer: candidateData.latestVersion.content.proposer,
                                        signatures: signatures
                                    )
                                )
                            )
                        }
                        print("fetchProposalCandidates: Successfully fetched data")
                    }
                } else if let errors = graphQLResult.errors {
                    print("fetchProposalCandidates: GraphQL errors received: \(errors)")
                }
            case .failure(let error):
                print("fetchProposalCandidates: Failed with error \(error)")
            }
            self.isLoading = false
        }
    }
}




