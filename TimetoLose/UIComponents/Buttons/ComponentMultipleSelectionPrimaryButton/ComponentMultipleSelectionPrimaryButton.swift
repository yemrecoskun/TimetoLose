//
//  ComponentMultipleSelectionPrimaryButton.swift
//  TimetoLose
//
//  Created by Ulas Goktas on 29.11.2022.
//

import SwiftUI

struct ComponentMultipleSelectionPrimaryButton: View {
    let title: String
    var font: Font = .bodyRegular
    var isSelected: Binding<Bool>
    let unselectedImageURL: String
    let selectedImageURL: String
    var titleColor: Color = .white
    var horizontalPadding: CGFloat = .regularPoint
    var verticalPadding: CGFloat = .regularPoint
    var buttonColor: Color = .brandOrange
    var cornerRadius: CGFloat = .regularPoint
    private let width = UIScreen.screenWidth * 0.9
    let action: () -> Void

    var body: some View {
        Button(action: action, label: {
            HStack(alignment: .center) {
                Text(title)
                    .font(font)
                    .padding(.horizontal, horizontalPadding)
                    .padding(.vertical, verticalPadding)
                    .foregroundColor(titleColor)
                Spacer()
                isSelected.wrappedValue ? createImageView(imageURL: selectedImageURL) : createImageView(imageURL: unselectedImageURL)
            }
            
        })
            .frame(width: width)
            .background(buttonColor)
            .cornerRadius(cornerRadius)
    }
    @ViewBuilder
    private func createImageView(imageURL: String) -> some View {
        Image(imageURL)
            .resizable()
            .frame(width: .doubleRegularPoint, height: .doubleRegularPoint)
            .padding(.horizontal, horizontalPadding)
            .padding(.vertical, verticalPadding)
    }
}

struct ComponentMultipleSelectionPrimaryButton_Previews: PreviewProvider {
    @State private static var isSelected = false

    static var previews: some View {
        ComponentMultipleSelectionPrimaryButton(title: "Test", isSelected: $isSelected, unselectedImageURL: AppIcon.Name.unselectedCheckMark.rawValue, selectedImageURL: AppIcon.Name.selectedCheckMark.rawValue, action: buttonAction)
    }

    private static func buttonAction() {
    }
}
