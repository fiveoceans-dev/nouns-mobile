//
//  NounOngoingProposalsModel.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/29.
//

import Foundation

struct NounOngoingProposalsModel: Identifiable {
    var id: String
    var title: String
    var status: String
    var forVotes: String
    var againstVotes: String
    var abstainVotes: String
    var quorumVotes: String
    var totalSupply: String
    var startBlock: String
    var endBlock: String
    var timestamp: Int

    init(id: String, title: String, status: String, forVotes: String, againstVotes: String, abstainVotes: String, quorumVotes: String, totalSupply: String, startBlock: String, endBlock: String, timestamp: Int) {
        self.id = id
        self.title = title
        self.status = status
        self.forVotes = forVotes
        self.againstVotes = againstVotes
        self.abstainVotes = abstainVotes
        self.quorumVotes = quorumVotes
        self.totalSupply = totalSupply
        self.startBlock = startBlock
        self.endBlock = endBlock
        self.timestamp = timestamp

    }
}

