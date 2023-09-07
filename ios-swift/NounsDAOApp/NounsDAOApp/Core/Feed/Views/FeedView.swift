//
//  FeedView.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/22.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ZStack {
            CirclesBlurBackground()
            VStack {
                Text("Hello, World!")
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
