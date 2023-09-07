//
//  ImagesLoop.swift
//  FirebaseAuthentication
//
//  Created by PAVEL on 2023/08/01.
//

import SwiftUI


struct ImagesLoop: View {
    let imageList = ["image-logo-0", "image-logo-1", "image-logo-2", "image-logo-3", "image-logo-4"]
    
    @State private var currentIndex = 0
    
    var body: some View {
        VStack {
                    Image(imageList[currentIndex])
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                        .padding(.vertical, 32)

                }
                .onAppear {
                    startImageRotation()
                }
    }
    
    func startImageRotation() {
            DispatchQueue.global(qos: .background).async {
                while true {
                    sleep(2) // Wait for 5 seconds
                    DispatchQueue.main.async {
                        updateImage()
                    }
                }
            }
        }
    
    func updateImage() {
        currentIndex = Int.random(in: 0..<imageList.count)
    }
}

struct ImagesLoop_Previews: PreviewProvider {
    static var previews: some View {
        ImagesLoop()
    }
}
