//
//  ComponentPrimaryButton.swift
//  iOSTemplate
//
//  Created by ulas on 22.08.2022.
//

import SwiftUI

struct ComponentPrimaryButton: View {
    let title: String
    var font: Font = .bodyRegular
    var showLeftImage = false
    var leftImageURL = ""
    var titleColor: Color = .white
    var horizontalPadding: CGFloat = .regularPoint
    var verticalPadding: CGFloat = .regularPoint
    var buttonColor: Color = .brandOrange
    var disabledColor: Color = .red
    var cornerRadius: CGFloat = .regularPoint
    var width: CGFloat = .doubleLargePoint
    var height: CGFloat = .largePoint
    var titleAlignment: Alignment = .center
    var isDisabled: Binding<Bool>
    let action: () -> Void

    var body: some View {
        Button(action: action, label: {
            HStack {
                if showLeftImage {
                    createImageView(imageURL: leftImageURL)
                }
                Text(title)
                    .frame(width: width, height: height, alignment: titleAlignment)
                    .font(font)
                    .padding(.horizontal, horizontalPadding)
                    .padding(.vertical, verticalPadding)
                    .foregroundColor(titleColor)
            }
        })
            .background(isDisabled.wrappedValue ? disabledColor : buttonColor)
            .cornerRadius(cornerRadius)
    }
    @ViewBuilder
    private func createImageView(imageURL: String) -> some View {
        Image(imageURL)
            .resizable()
            .frame(width: .doubleRegularPoint, height: .doubleRegularPoint)
            .padding(.horizontal, horizontalPadding)
            .padding(.vertical, 0)
    }
}
