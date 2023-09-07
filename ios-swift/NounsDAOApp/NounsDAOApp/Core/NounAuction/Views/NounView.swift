//
//  NounView.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/07.
//

import SwiftUI

struct NounView: View {
    @State private var downloadedImage: UIImage?
    let auctionID: Int
    
    var body: some View {
        VStack {
            if let uiImage = downloadedImage {
                Image(uiImage: uiImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180)
                    .padding()
                    .cornerRadius(15)
            } else {
                Text("⌐◨-◨")
                    .foregroundColor(Color("indexcard-blue"))
            }
        }
        .padding()
        .onAppear {
            if let storedImage = ImageUtility.loadImageFromDisk(auctionID: auctionID) {
                downloadedImage = storedImage
                print("stored image \(auctionID)")
            } else {
                ImageUtility.fetchAndStoreImage(auctionID: auctionID) { image in
                    if let image = image {
                        downloadedImage = image
                    }
                }
                print("loaded image \(auctionID)")
            }
        }
        .onChange(of: auctionID) { newAuctionID in
            if let storedImage = ImageUtility.loadImageFromDisk(auctionID: newAuctionID) {
                downloadedImage = storedImage
                print("stored image \(auctionID)")
            } else {
                ImageUtility.fetchAndStoreImage(auctionID: newAuctionID) { image in
                    if let image = image {
                        downloadedImage = image
                    }
                }
                print("loaded image \(newAuctionID)")
            }
        }
    }
}

struct NounView_Previews: PreviewProvider {
    static var previews: some View {
        NounView(auctionID: 0)
    }
}










