////
////  ProposalCandidateModel.swift
////  NounsDAOApp
////
////  Created by PAVEL on 2023/09/05.
////
//
//import Foundation
//import NounsAPI
//
//struct ProposalCandidateModel: Identifiable {
//    var id: String
//    var proposer: String
//    var latestVersion: ProposalVersion
//
//    struct ProposalVersion {
//        var id: String
//        var content: ProposalContent
//    }
//
//    struct ProposalContent {
//        var title: String
//        var proposer: String
//        var signatures: [String]
//    }
//
//    init(id: String, proposer: String, latestVersion: ProposalVersion) {
//        self.id = id
//        self.proposer = proposer
//        self.latestVersion = latestVersion
//    }
//
//    func fetchProposalData(completion: @escaping (Result<ProposalModel, Error>) -> Void) {
//        let query = ProposalQuery(id: id)
//
//        NetworkNouns.shared.apollo.fetch(query: query) { result in
//            switch result {
//            case .success(let graphQLResult):
//                var updatedSelf = self // Create a new instance to modify properties
//                if let proposal = graphQLResult.data?.proposals.first {
//                    updatedSelf.id = proposal.id
//                    updatedSelf.title = proposal.title
//                    // Map GraphQL enum to Swift enum
//                    updatedSelf.forVotes = proposal.forVotes
//                    updatedSelf.againstVotes = proposal.againstVotes
//                    updatedSelf.abstainVotes = proposal.abstainVotes
//                    updatedSelf.quorumVotes = proposal.quorumVotes
//                    updatedSelf.totalSupply = proposal.totalSupply
//                    updatedSelf.description = proposal.description
//                }
//                completion(.success(updatedSelf))
//            case .failure(let error):
//                completion(.failure(error))
//            }
//        }
//    }
//}
