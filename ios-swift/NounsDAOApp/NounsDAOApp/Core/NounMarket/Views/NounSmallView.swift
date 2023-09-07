//
//  NounSmallView.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/18.
//

import SwiftUI

struct NounSmallView: View {
    @State private var downloadedImage: UIImage?
    let auctionID: Int
    
    var body: some View {
        VStack {
            if let uiImage = downloadedImage {
                Image(uiImage: uiImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                    .padding()
                    .cornerRadius(15)
            } else {
                Text("⌐◨-◨")
                    .font(.largeTitle)
                    .foregroundColor(.green)
            }
        }
        .padding()
        .onAppear {
            if let storedImage = ImageUtility.loadImageFromDisk(auctionID: auctionID) {
                downloadedImage = storedImage
                print("stored image \(auctionID)")
            } else {
                fetchAndStoreImage()
                print("loaded image \(auctionID)")
            }
        }
        .onChange(of: auctionID) { newAuctionID in
            if let storedImage = ImageUtility.loadImageFromDisk(auctionID: newAuctionID) {
                downloadedImage = storedImage
                print("stored image \(auctionID)")
            } else {
                fetchAndStoreImage()
                print("loaded image \(auctionID)")
            }
        }
    }
    
    private func fetchAndStoreImage() {
        ImageUtility.fetchAndStoreImage(auctionID: auctionID) { image in
            if let image = image {
                downloadedImage = image
            }
        }
    }
}

struct NounSmallView_Previews: PreviewProvider {
    static var previews: some View {
        NounSmallView(auctionID: 1)
    }
}









