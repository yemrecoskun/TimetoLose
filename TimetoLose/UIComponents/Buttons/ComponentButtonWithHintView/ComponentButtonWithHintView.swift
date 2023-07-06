//
//  ComponentButtonWithHintView.swift
//  TimetoLose
//
//  Created by Ulas Goktas on 29.11.2022.
//

import SwiftUI

struct ComponentButtonWithHintView: View {
    let title: String
    var titleFont: Font = .bodyRegular
    var titleColor: Color = .white
    let hintText: String
    var hintTextFont: Font = .bodySmall
    var hintTextColor: Color = .gray
    var horizontalPadding: CGFloat = .regularPoint
    var verticalPadding: CGFloat = .regularPoint
    var buttonColor: Color = .brandOrange
    var cornerRadius: CGFloat = .regularPoint
    var width: CGFloat = .doubleLargePoint
    var height: CGFloat = .largePoint
    var titleAlignment: Alignment = .leading
    let action: () -> Void

    var body: some View {
        Button(action: action, label: {
            VStack {
                Text(title)
                    .frame(width: width, height: height, alignment: titleAlignment)
                    .font(titleFont)
                    .padding(.horizontal, horizontalPadding)
                    .padding(.top, verticalPadding)
                    .foregroundColor(titleColor)
                Text(hintText)
                    .frame(width: width, height: height, alignment: titleAlignment)
                    .font(hintTextFont)
                    .padding(.horizontal, horizontalPadding)
                    .padding(.bottom, verticalPadding)
                    .foregroundColor(hintTextColor)
            }
        })
            .background(buttonColor)
            .cornerRadius(cornerRadius)
    }
}

struct ComponentButtonWithHintView_Previews: PreviewProvider {
    static var previews: some View {
        ComponentButtonWithHintView(title: "Test", hintText: "TestHint", action: buttonAction)
    }

    private static func buttonAction() {
    }
}
