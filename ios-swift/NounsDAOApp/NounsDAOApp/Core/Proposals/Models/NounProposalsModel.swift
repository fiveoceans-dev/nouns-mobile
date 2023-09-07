//
//  ProposalsModel.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/22.
//

import Foundation

struct NounProposalsModel: Identifiable {
    var id: String
    var title: String
    var status: String
    var forVotes: String
    var againstVotes: String
    var abstainVotes: String
    var quorumVotes: String
    var totalSupply: String

    init(id: String, title: String, status: String, forVotes: String, againstVotes: String, abstainVotes: String, quorumVotes: String, totalSupply: String) {
        self.id = id
        self.title = title
        self.status = status
        self.forVotes = forVotes
        self.againstVotes = againstVotes
        self.abstainVotes = abstainVotes
        self.quorumVotes = quorumVotes
        self.totalSupply = totalSupply
    }
}








