//
//  FlipClockView.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/25.
//

import SwiftUI

struct FlipClockView: View {
    @Binding var countdownText: String
    
    var body: some View {
        HStack(spacing: 2) {
            ForEach(Array(countdownText), id: \.self) { char in
                if char.isNumber {
                    let digit = Int(String(char))!
                    let nextDigit = (digit + 1) % 10
                    FlipClockDigit(digit: digit, nextDigit: nextDigit) // Use FlipClockDigit here
                } else {
                    Text(String(char))
                        .font(.largeTitle)
                        .foregroundColor(.black)
                        .frame(width: 20, height: 25)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 4))
                }
            }
        }
    }
}


struct FlipClockView_Previews: PreviewProvider {
    static var previews: some View {
        FlipClockView(countdownText: .constant("12:34:56")) // Use any placeholder time
    }
}
