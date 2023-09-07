//
//  NounMarketViewModel.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/24.
//

import Foundation


class NounMarketViewModel: ObservableObject {
    
    @Published private var model: NounMarketModel
    
    var auctionID: String {
        model.id
    }
    
    init(model: NounMarketModel) {
        self.model = model
        
    }
}
