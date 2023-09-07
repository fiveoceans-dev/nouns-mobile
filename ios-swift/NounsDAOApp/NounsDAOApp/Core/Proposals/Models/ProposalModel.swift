//
// ProposalModel.swift
// NounsDAOApp
//
// Created by PAVEL on 2023/08/29.
//

import Foundation
import NounsAPI

struct ProposalModel: Identifiable {
    var id: String
    var title: String
    var status: String
    var forVotes: BigInt
    var againstVotes: BigInt
    var abstainVotes: BigInt
    var quorumVotes: BigInt
    var totalSupply: BigInt
    var description: String

    init(id: String, title: String, status: String, forVotes: BigInt, againstVotes: BigInt, abstainVotes: BigInt, quorumVotes: BigInt, totalSupply: BigInt, description: String) {
        self.id = id
        self.title = title
        self.status = status
        self.forVotes = forVotes
        self.againstVotes = againstVotes
        self.abstainVotes = abstainVotes
        self.quorumVotes = quorumVotes
        self.totalSupply = totalSupply
        self.description = description
    }

    func fetchProposalData(completion: @escaping (Result<ProposalModel, Error>) -> Void) {
        let query = ProposalQuery(id: id)

        NetworkNouns.shared.apollo.fetch(query: query) { result in
            switch result {
            case .success(let graphQLResult):
                var updatedSelf = self
                if let proposal = graphQLResult.data?.proposals.first {
                    updatedSelf.id = proposal.id
                    updatedSelf.title = proposal.title

                    updatedSelf.status = status
                    updatedSelf.forVotes = proposal.forVotes
                    updatedSelf.againstVotes = proposal.againstVotes
                    updatedSelf.abstainVotes = proposal.abstainVotes
                    updatedSelf.quorumVotes = proposal.quorumVotes
                    updatedSelf.totalSupply = proposal.totalSupply
                    updatedSelf.description = proposal.description
                }
                completion(.success(updatedSelf))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
