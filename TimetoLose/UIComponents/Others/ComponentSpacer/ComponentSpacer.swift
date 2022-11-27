//
//  ComponentSpacer.swift
//  BMICalculator
//
//  Created by ulas on 22.06.2022.
//

import SwiftUI

struct ComponentSpacer: View {
    var direction: Axis.Set = .horizontal
    let size: CGFloat

    var body: some View {
        if direction == .horizontal {
            Spacer()
                .frame(width: size)
        } else {
            Spacer()
                .frame(height: size)
        }
    }
}
