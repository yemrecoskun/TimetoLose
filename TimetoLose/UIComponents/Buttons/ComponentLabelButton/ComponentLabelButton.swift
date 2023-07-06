//
//  ComponentLabelButton.swift
//  BMICalculator
//
//  Created by ulas on 31.07.2022.
//

import SwiftUI

struct ComponentLabelButton: View {
    let title: String
    var font: Font = .bodyPrimaryBold
    var titleColor: Color = .blue
    let action: () -> Void

    var body: some View {
        Button(action: action, label: {
            Text(title)
                .foregroundColor(titleColor)
                .font(font)
        })
    }
}
