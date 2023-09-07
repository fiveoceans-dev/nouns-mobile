//
//  NounRarityModel.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/13.
//

import Foundation
import NounsAPI

class NounRarityModel {
    var nounInfoID: ID
    var nounID: ID
    var nounHead: BigInt
    var nounGlasses: BigInt
    var nounAccessory: BigInt
    var nounBody: BigInt
    var nounBackground: BigInt
    
    init(nounInfoID: ID) {
        self.nounInfoID = nounInfoID
        self.nounID = ""
        self.nounHead = ""
        self.nounGlasses = ""
        self.nounAccessory = ""
        self.nounBody = ""
        self.nounBackground = ""
    }
    
    func fetchNounData(completion: @escaping (Result<NounRarityModel, Error>) -> Void) {
        let query = NounInfoQuery(nounInfoID: nounInfoID)
        NetworkNouns.shared.apollo.fetch(query: query) { result in
            switch result {
            case .success(let graphQLResult):
                if let data = graphQLResult.data?.noun?.seed {
                    self.nounID = data.id
                    self.nounHead = data.head
                    self.nounGlasses = data.glasses
                    self.nounAccessory = data.accessory
                    self.nounBody = data.body
                    self.nounBackground = data.background
                    completion(.success(self))
                } else {
                    let error = NSError(domain: "Data not found", code: 404, userInfo: nil)
                    completion(.failure(error))
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}




