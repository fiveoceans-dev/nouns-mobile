//
//  ProposalViewModel.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/29.
//

import Foundation
import Apollo
import NounsAPI

class ProposalViewModel: ObservableObject {
    @Published private var model = ProposalModel(
        id: "1",
        title: "",
        status: "PENDING",
        forVotes: "",
        againstVotes: "",
        abstainVotes: "",
        quorumVotes: "",
        totalSupply: "",
        description: ""
    )
    
    init(proposalID: Int) {
        self.model = ProposalModel(id: String(proposalID), title: "", status: "PENDING", forVotes: "", againstVotes: "", abstainVotes: "", quorumVotes: "", totalSupply: "", description: "")
    }
    
    @Published var isLoading = true
    var id: String {
        model.id
    }
    var title: String {
        model.title
    }
    var status: String {
        model.status
    }
    var forVotes: String {
        model.forVotes
    }
    var againstVotes: String {
        model.againstVotes
    }
    var abstainVotes: String {
        model.abstainVotes
    }
    var quorumVotes: String {
        model.quorumVotes
    }
    var totalSupply: String {
        model.totalSupply
    }
    var description: String {
        model.description
    }
    
    func fetchProposalInfo() {
        isLoading = true
        model.fetchProposalData { result in
            switch result {
            case .success(let updatedModel):
                DispatchQueue.main.async {
                    self.model = updatedModel
                    self.isLoading = false
                }
            case .failure(let error):
                print("Error fetching proposal data: \(error)")
                self.isLoading = false
            }
        }
    }
}






