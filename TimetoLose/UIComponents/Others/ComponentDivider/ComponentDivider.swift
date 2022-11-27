//
//  ComponentDivider.swift
//  BMICalculator
//
//  Created by ulas on 1.08.2022.
//

import SwiftUI

struct ComponentDivider: View {
    var color: Color = .gray
    var direction: Axis.Set = .horizontal
    var thickness: CGFloat = .onePoint
    var length = UIScreen.screenWidth * 0.9

    var body: some View {
        if direction == .horizontal {
            Rectangle()
                .fill(color)
                .frame(width: length, height: thickness)
                .edgesIgnoringSafeArea(.horizontal)
        } else {
            Rectangle()
                .fill(color)
                .frame(width: thickness, height: length)
                .edgesIgnoringSafeArea(.vertical)
        }
    }
}
