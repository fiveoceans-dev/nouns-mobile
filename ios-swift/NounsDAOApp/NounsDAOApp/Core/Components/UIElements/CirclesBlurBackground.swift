//
//  CirclesBlurBackground.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/26.
//

import SwiftUI

struct CirclesBlurBackground: View {
    
    
    
    var body: some View {
        ZStack {
            TransparentBlurView(removeAllFilters: false)
                .blur(radius: 10)
                .padding([.horizontal, .top], -30)
                .background(
                    ZStack {
                        Color.blue.opacity(0.2)
                        Color.white.opacity(0.6)
                            .blur(radius: 90)
                    })
                .ignoresSafeArea()
        }
    }
}


struct CirclesBackground_Previews: PreviewProvider {
    static var previews: some View {
        CirclesBlurBackground()
    }
}

