//
//  ImageUtility.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/22.
//

import Foundation
import UIKit

class ImageUtility {
    static func fetchAndStoreImage(auctionID: Int, completion: @escaping (UIImage?) -> Void) {
        NounFetcher().fetchImage(for: auctionID) { result in
            switch result {
            case .success(let image):
                DispatchQueue.main.async {
                    saveImageToDisk(image: image, auctionID: auctionID)
                    completion(image)
                }
            case .failure(let error):
                print("Error fetching image: \(error)")
                completion(nil)
            }
        }
    }
    
    static func loadImageFromDisk(auctionID: Int) -> UIImage? {
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
        let imageURL = documentsDirectory?.appendingPathComponent("\(auctionID).png")
        
        if let imageURL = imageURL,
           let imageData = try? Data(contentsOf: imageURL),
           let image = UIImage(data: imageData) {
            return image
        } else {
            return nil
        }
    }
    
    static func saveImageToDisk(image: UIImage, auctionID: Int) {
        guard let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {
            return
        }
        
        let imageURL = documentsDirectory.appendingPathComponent("\(auctionID).png")
        
        if let imageData = image.pngData() {
            try? imageData.write(to: imageURL)
        }
    }
}

