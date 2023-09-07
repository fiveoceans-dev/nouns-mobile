//
//  ThemeColors.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/27.
//

// ThemeColors.swift
import SwiftUI

struct ThemeColors {
    // Background colors
    static let lightBackground = Color(hex: "#F9F9F9")
    static let darkBackground = Color(hex: "#1E1E1E")

    // Text colors
    static let lightText = Color(hex: "#333740")
    static let darkText = Color(hex: "#F2F2F2")

    // Button colors
    static let lightButton = Color(hex: "#4CAF50")
    static let darkButton = Color(hex: "#9C27B0")

    // Label colors
    static let lightLabel = Color(hex: "#FF9800")
    static let darkLabel = Color(hex: "#03A9F4")
}

// Helper extension to initialize Color from hex values
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0

        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
