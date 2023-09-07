//
//  IntroView.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/09/02.
//

import SwiftUI

struct IntroView: View {
    @State private var currentBackgroundIndex: Int = 1
    let timer = Timer.publish(every: 0.2, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            Image("introBackground\(currentBackgroundIndex)")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            Color.yellow
                .opacity(0.8)
                .edgesIgnoringSafeArea(.all)
            Image("introBackground\(currentBackgroundIndex)")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .mask(
                    GeometryReader { geometry in
                        Image("nogglesshape")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width * 0.8)
                            .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                    }
                        .opacity(0.6)
                )
        }
        .onReceive(timer) { _ in
            currentBackgroundIndex = (currentBackgroundIndex % 10) + 1 //
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}


