//
//  NounFetcher.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/07.
//

import SwiftUI

class NounFetcher: ObservableObject {
    @Published var image: UIImage?

    func fetchImage(for number: Int, completion: @escaping (Result<UIImage, Error>) -> Void) {
        guard let url = URL(string: "https://noun.pics/\(number)") else {
            completion(.failure(NounFetcherError.invalidURL))
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }

            guard let data = data, let image = UIImage(data: data) else {
                completion(.failure(NounFetcherError.invalidImageData))
                return
            }

            completion(.success(image))
        }.resume()
    }
}

enum NounFetcherError: Error {
    case invalidURL
    case invalidImageData
}






