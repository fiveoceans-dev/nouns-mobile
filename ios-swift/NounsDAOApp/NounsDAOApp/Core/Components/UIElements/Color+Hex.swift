//
//  Color+Hex.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/18.
//

import SwiftUI

extension Color {
    init(hex: UInt, alpha: Double = 1.0) {
        let red = Double((hex >> 16) & 0xFF) / 255.0
        let green = Double((hex >> 8) & 0xFF) / 255.0
        let blue = Double(hex & 0xFF) / 255.0
        
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: alpha)
    }
}
