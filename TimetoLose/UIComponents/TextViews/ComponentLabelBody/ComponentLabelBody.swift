//
//  ComponentLabelBody.swift
//  iOSTemplate
//
//  Created by ulas on 24.08.2022.
//

import SwiftUI

struct ComponentLabelBody: View, BaseLabelProtocol {
    var text: String
    var font: Font = .bodyPrimary
    var textColor: Color = .gray
    var textAlignment: TextAlignment = .center
    private let textMinimumScale = 0.5
    var lineLimit: Int? = nil

    var body: some View {
        Text(text)
            .font(font)
            .foregroundColor(textColor)
            .multilineTextAlignment(textAlignment)
            .minimumScaleFactor(textMinimumScale)
            .lineLimit(lineLimit)
    }
}
