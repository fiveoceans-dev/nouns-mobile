//
//  LoadingView.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/25.
//

import SwiftUI

struct LoadingView: View {
    @State private var flipHorizontally = false
    @State private var flipVertically = false

    var body: some View {
        Image("noggles.fill")
            .resizable()
            .frame(width: 150, height: 150)
            .rotationEffect(flipHorizontally ? Angle(degrees: 180) : .zero)
            .scaleEffect(flipVertically ? -1 : 1, anchor: .center)
            .onAppear {
                startFlipping()
            }
    }

    private func startFlipping() {
        let randomFlipHorizontal = Bool.random()
        let randomFlipVertical = Bool.random()
        withAnimation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true)) {
            flipHorizontally = randomFlipHorizontal
            flipVertically = randomFlipVertical
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}

