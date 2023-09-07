//
//  NounMarketView.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/20.
//

import SwiftUI

struct NounMarketView: View {
    
    var forSalePriceNouns: [String] = ["34.69", "34.69", "35.69", "36.00", "37.00", "38.00"]
    var forSaleStartNouns: [Int] = [578, 577, 454, 424, 344, 809, 581]
    
    var bidsPriceNouns: [String] = ["33.00", "32.61", "32.60", "31.00", "30.85"]
    var bidsStartNouns: [Int] = [788, 782, 776, 770, 598]
    
    var soldPriceNouns: [String] = ["35.00", "Ξ34.49", "Ξ34.68", "Ξ34.68", "Ξ34.99"]
    var soldStartNouns: [Int] = [570, 766, 619, 567, 526]
    
    var body: some View {
        ZStack {
            BoardCardView(firstColor: Color("a-mono"), secondColor: Color("a-mono"), startPoint: .leading, endPoint: .trailing, opacity: 0.4)
            marketView
        }
    }
    
    var marketView: some View {
        VStack(alignment: .leading, spacing: 1) {
            sectionView(title: "For Sale", priceNouns: forSalePriceNouns, startNouns: forSaleStartNouns)
            Divider()
            sectionView(title: "Bids", priceNouns: bidsPriceNouns, startNouns: bidsStartNouns)
            Divider()
            sectionView(title: "Sold", priceNouns: soldPriceNouns, startNouns: soldStartNouns)
        }
        .padding(10)
    }
    
    private func sectionView(title: String, priceNouns: [String], startNouns: [Int]) -> some View {
        VStack(spacing: 0) {
            HStack {
                column(alignment: .leading, text: title)
                    .frame(width: 80, alignment: .leading)
                    .foregroundColor(Color("indexcard-text"))
                
                Spacer()
                column(alignment: .center, text: "F:")
                    .frame(width: 80, alignment: .leading)
                    .foregroundColor(Color("indexcard-text"))
                
                column(alignment: .trailing, text: "7D:")
                    .frame(width: 80, alignment: .leading)
                    .foregroundColor(Color("indexcard-text"))
                
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<priceNouns.count, id: \.self) { index in
                        NounItemView(nounID: startNouns[index], price: priceNouns[index])
                    }
                }
                .onTapGesture {
                    print("pressed")
                }
            }
        }
        
    }
    
    private func column(alignment: HorizontalAlignment, text: String) -> some View {
        VStack(alignment: alignment, spacing: 0) {
            Text(text)
                .bold()
        }
    }
}

struct NounItemView: View {
    var nounID: Int
    var price: String
    
    var body: some View {
        VStack(spacing: 1) { // Set spacing to 0
            Text("\(nounID)")
                .font(.subheadline)
                .foregroundColor(Color("indexcard-text"))
            ZStack {
                RoundedRectangle(cornerRadius: 2)
                    .foregroundColor(Color.yellow)
                    .frame(width: 60, height: 60)
                    .cornerRadius(16)
                NounSmallView(auctionID: nounID)
                    .frame(width: 60, height: 60)
                    .cornerRadius(15)
            }
            .frame(width: 60, height: 60)
            Text(price)
                .font(.subheadline)
                .foregroundColor(Color("indexcard-text"))
        }
    }
}


struct NounMarketView_Previews: PreviewProvider {
    static var previews: some View {
        NounMarketView()
    }
}


