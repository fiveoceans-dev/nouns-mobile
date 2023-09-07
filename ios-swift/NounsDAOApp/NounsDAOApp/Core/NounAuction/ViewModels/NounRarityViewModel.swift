//
//  NounRarityViewModel.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/13.
//


import Foundation
import NounsAPI

class NounRarityViewModel: ObservableObject {
    @Published private var model: NounRarityModel
    
    init(nounInfoID: ID) {
        self.model = NounRarityModel(nounInfoID: nounInfoID)
    }
    
    var nounID: BigInt {
        model.nounID
    }
    var nounHead: BigInt {
        model.nounHead
    }
    var nounGlasses: BigInt {
        model.nounGlasses
    }
    var nounBody: BigInt {
        model.nounBody
    }
    var nounAcessory: BigInt {
        model.nounAccessory
    }
    var nounBackground: BigInt {
        model.nounBackground
    }
    
    func fetchNounInfo(completion: @escaping (Result<NounRarityModel, Error>) -> Void) {
        model.fetchNounData { result in
            switch result {
            case .success:
                DispatchQueue.main.async {
                    self.objectWillChange.send()
                }
                completion(.success(self.model))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
