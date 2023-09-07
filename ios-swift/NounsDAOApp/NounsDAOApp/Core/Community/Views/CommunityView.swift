//
//  CommunityView.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/22.
//

import SwiftUI

struct CommunityView: View {
    let columns: Int = 5
    let spacing: CGFloat = 20
    let circleDiameter: CGFloat = 65
    let circleLineWidth: CGFloat = 1
    
    var body: some View {
        ZStack {
            CirclesBlurBackground()
            ScrollView(.vertical) {
                ZStack {
                    BoardCardView(firstColor: Color("a-mono"), secondColor: Color("a-mono"), startPoint: .leading, endPoint: .trailing, opacity: 0.4)
                    LazyVGrid(columns: Array(repeating: .init(.flexible()), count: columns), spacing: spacing) {
                        ForEach(generateRandomIndices(count: 800), id: \.self) { index in
                            VStack {
                                ZStack {
                                    Circle()
                                        .stroke(Color.black, lineWidth: circleLineWidth)
                                        .frame(width: circleDiameter, height: circleDiameter)
                                    NounSmallView(auctionID: index + 1)
                                        .frame(width: 60, height: 60)
                                        .clipShape(Circle())    
                                }
                                Text(String(format: "%03d", index + 1))
                                    .font(.caption)
                                    .foregroundColor(Color("indexcard-text"))
                            }
                        }
                    }
                    .padding(10)
                }
            }
            .padding(10)
        }
    }
    
    func generateRandomIndices(count: Int) -> [Int] {
        return (0..<count).map { _ in Int.random(in: 0...800) }
    }
}

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView()
    }
}
