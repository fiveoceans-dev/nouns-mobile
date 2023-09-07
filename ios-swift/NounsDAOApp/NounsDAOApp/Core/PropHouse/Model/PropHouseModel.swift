//
//  HousesModel.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/06/13.
// 

import Foundation

struct PropHouseModel<HouseContent> where HouseContent: Equatable {
    private(set) var houses: Array<House>
    
    private var indexOfTheOneAndOnlyFaceUpHouse: Int?
    
    mutating func choose(_ house: House) {
        if let chosenIndex = houses.firstIndex(where: { $0.id == house.id}),
           !houses[chosenIndex].isFaceUp,
           !houses[chosenIndex].isMatched
        {
            if let potentialMatchIndex = indexOfTheOneAndOnlyFaceUpHouse {
                if houses[chosenIndex].content == houses[potentialMatchIndex].content {
                    houses[chosenIndex].isFaceUp = true
                    houses[potentialMatchIndex].isFaceUp = true
                }
                indexOfTheOneAndOnlyFaceUpHouse = nil
            } else {
                for index in houses.indices {
                    houses[index].isFaceUp = false
                }
                indexOfTheOneAndOnlyFaceUpHouse = chosenIndex
            }
            houses[chosenIndex].isFaceUp.toggle()
        }
        print("\(houses)")
    }
    
    init(numberOfPairsOfHouses: Int, createHouseContent: (Int) -> HouseContent) {
        houses = Array<House>()
        for pairIndex in 0..<numberOfPairsOfHouses {
            let content = createHouseContent(pairIndex)
            houses.append(House(content: content, id: pairIndex*2))
            houses.append(House(content: content, id: pairIndex*2+1))
        }
    }
    
    struct House: Identifiable {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: HouseContent
        var id: Int
    }
    
}


