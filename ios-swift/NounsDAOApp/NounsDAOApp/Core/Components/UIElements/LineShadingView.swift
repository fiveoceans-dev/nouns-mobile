//
//  LineShadingView.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/22.
//

import SwiftUI

struct LineShadingView: View {
    let forVotes: String
    let againstVotes: String
    let totalSupply: String
    
    private func calculatePercentage(_ votes: String) -> Double {
        guard let votesInt = Double(votes), let totalSupplyInt = Double(totalSupply), totalSupplyInt > 0 else {
            return 0
        }
        return votesInt / totalSupplyInt
    }
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .foregroundColor(.gray)
            Rectangle()
                .foregroundColor(.red)
                .frame(width: CGFloat(min(1.0, calculatePercentage(againstVotes) + calculatePercentage(forVotes))) * UIScreen.main.bounds.width)
            
            Rectangle()
                .foregroundColor(.blue)
                .frame(width: CGFloat(min(1.0, calculatePercentage(forVotes))) * UIScreen.main.bounds.width)
        }
    }

}
