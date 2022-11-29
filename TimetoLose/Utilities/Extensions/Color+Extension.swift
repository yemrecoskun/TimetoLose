//
//  Color+Extension.swift
//  TimetoLose
//
//  Created by Ulas Goktas on 27.11.2022.
//

import SwiftUI

extension Color {
    static let lightGrey = Color(hex: "F7F8F8")
    static let darkPurple = Color(hex: "A98CA6")
    static let darkPing = Color(hex: "FCB29F")
    static let darkYellow = Color(hex: "AC9801")
    static let lightYellow = Color(hex: "FDDA02")
    static let success = Color(hex: "24FF00")
    static let failed = Color(hex: "FF0000")
    static let lightAppColor = Color(hex: "FE7E6B")
    static let background = Color("background")
    static let brandOrange = Color("brandOrange")
}

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
            (a, r, g, b) = (1, 1, 1, 0)
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
