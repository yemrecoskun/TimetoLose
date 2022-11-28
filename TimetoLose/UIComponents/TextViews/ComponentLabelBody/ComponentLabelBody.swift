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

    var body: some View {
        Text(text)
            .font(font)
            .foregroundColor(textColor)
            .multilineTextAlignment(textAlignment)
    }
}
