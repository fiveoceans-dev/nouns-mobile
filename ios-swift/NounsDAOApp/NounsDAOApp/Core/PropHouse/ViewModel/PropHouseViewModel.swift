//
//  HousesViewModel.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/06/13.
// EmojiMemoryGame

import SwiftUI

class PropHouseViewModel: ObservableObject {
    static let communities = ["A", "B", "C", "D", "E", "F", "G"]
    
    static func createHouseModel() -> PropHouseModel<String> {
        PropHouseModel<String>(numberOfPairsOfHouses: 4) { houseIndex in
            communities[houseIndex]
        }
    }
        
    @Published private var model: PropHouseModel<String> = createHouseModel()
    
    var houses: Array<PropHouseModel<String>.House> {
        model.houses
    }
    
    // MARK: - Intent(s)
    func choose(_ house: PropHouseModel<String>.House) {
        model.choose(house)
    }
    
}
