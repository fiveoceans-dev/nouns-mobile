//
//  NounInfoView.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/13.
//

import SwiftUI

struct NounRarityView: View {
    @StateObject private var viewModel = NounRarityViewModel(nounInfoID: "0")
    
    var body: some View {
        Text(viewModel.nounHead)
            .onAppear {
                viewModel.fetchNounInfo { result in
                    switch result {
                    case .success:
                        print("View: Auction data fetched successfully.")
                        break
                    case .failure(let error):
                        print("View: Fetching auction data failed with error: \(error)")
                    }
                }
            }
    }
}

struct NounInfoView_Previews: PreviewProvider {
    static var previews: some View {
        NounRarityView()
    }
}
