//
//  FlipClockDigit.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/25.
//

import SwiftUI

struct FlipClockDigit: View {
    @State var digit: Int
    @State var nextDigit: Int
    @State var shouldFlip: Bool = false

    var body: some View {
        ZStack {
            Text("\(digit)")
                .font(.largeTitle)
                .foregroundColor(.black)
                .rotation3DEffect(
                    .degrees(shouldFlip ? -180 : 0),
                    axis: (x: 1, y: 0, z: 0)
                )
                .opacity(shouldFlip ? 0 : 1)
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        withAnimation(.linear(duration: 0.5)) {
                            shouldFlip.toggle()
                            digit = nextDigit
                        }
                    }
                }

            Text("\(nextDigit)")
                .font(.largeTitle)
                .foregroundColor(.black)
                .rotation3DEffect(
                    .degrees(shouldFlip ? 0 : 180),
                    axis: (x: 1, y: 0, z: 0)
                )
                .opacity(shouldFlip ? 1 : 0)
        }
        .frame(width: 20, height: 25)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 2))
    }
}


struct FlipClockDigit_Previews: PreviewProvider {
    static var previews: some View {
        FlipClockDigit(digit: 1, nextDigit: 1)
    }
}
