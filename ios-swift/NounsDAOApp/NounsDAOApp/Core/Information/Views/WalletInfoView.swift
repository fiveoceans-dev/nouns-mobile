//
//  WalletInfoView.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/27.
//

import SwiftUI

struct WalletInfoView: View {
    var body: some View {
        ZStack {
            CirclesBlurBackground()
            ScrollView {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.white)
                        .frame(height: 300)
                        .ignoresSafeArea(edges: .top)
                    BoardCardView(firstColor: Color(.orange), secondColor: Color(.white), startPoint: .top, endPoint: .bottom, opacity: 0.4)
                    Image("Info-1")
                        .frame(width: 25, height: 25)
                }
                VStack(alignment: .leading) {
                    Text("Ethereum Wallet")
                        .font(.title)
                    HStack(alignment: .top) {
                        Text("In this tab, you will be able to interact with NounsDAO using your MetaMask wallet.")
                    }
                    Divider()
                    HStack(alignment: .top) {
                        Text("Voting")
                            .font(.title2)
                            .frame(width: 110)
                        Text("You can vote by signing transactions with your wallet.")
                    }
                    Divider()
                    HStack(alignment: .top) {
                        Text("Delegating")
                            .font(.title2)
                            .frame(width: 110)
                        Text("You can also delegate your voting rights to other people.")
                    }
                }
            }
            .padding(10)
        }
    }
}

struct WalletInfoView_Previews: PreviewProvider {
    static var previews: some View {
        WalletInfoView()
    }
}
