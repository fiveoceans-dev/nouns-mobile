//
//  NounProposalsCandidatesModel.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/29.
//

import Foundation

struct NounProposalsCandidatesModel: Identifiable {
    var id: String
    var proposer: String
    var latestVersion: ProposalVersion

    struct ProposalVersion {
        var id: String
        var content: ProposalContent
    }

    struct ProposalContent {
        var title: String
        var proposer: String
        var signatures: [String]
    }

    init(id: String, proposer: String, latestVersion: ProposalVersion) {
        self.id = id
        self.proposer = proposer
        self.latestVersion = latestVersion
    }
}

