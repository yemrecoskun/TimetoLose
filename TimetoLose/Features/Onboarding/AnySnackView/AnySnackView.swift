//
//  AnySnackView.swift
//  TimetoLose
//
//  Created by Ulas Goktas on 29.11.2022.
//

import SwiftUI

struct AnySnackView: View {
    private let buttonWidth = UIScreen.screenWidth * 0.8
    @State private var isDisabled = false

    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            VStack {
                ComponentLabelHeader(text: AppText.AnySnackView.header, font: .bodyExtraLarge, textColor: .brandOrange)
                ComponentLabelBody(text: AppText.AnySnackView.body, font: .bodyRegular, textColor: .brandOrange)
                // MARK: Choices
                VStack {
                    ComponentPrimaryButton(title: AppText.AnySnackView.no, width: buttonWidth, titleAlignment: .leading, isDisabled: $isDisabled, action: noSnackButtonTapped)
                    ComponentPrimaryButton(title: AppText.AnySnackView.one, width: buttonWidth, titleAlignment: .leading, isDisabled: $isDisabled, action: oneSnackButtonTapped)
                    ComponentPrimaryButton(title: AppText.AnySnackView.two, width: buttonWidth, titleAlignment: .leading, isDisabled: $isDisabled, action: twoSnackButtonTapped)
                    ComponentPrimaryButton(title: AppText.AnySnackView.three, width: buttonWidth, titleAlignment: .leading, isDisabled: $isDisabled, action: threeSnackButtonTapped)
                    ComponentPrimaryButton(title: AppText.AnySnackView.four, width: buttonWidth, titleAlignment: .leading, isDisabled: $isDisabled, action: fourSnackButtonTapped)
                }
                Spacer()
            }
        }
    }
    private func noSnackButtonTapped() {
    }
    private func oneSnackButtonTapped() {
    }
    private func twoSnackButtonTapped() {
    }
    private func threeSnackButtonTapped() {
    }
    private func fourSnackButtonTapped() {
    }
}

struct AnySnackView_Previews: PreviewProvider {
    static var previews: some View {
        AnySnackView()
    }
}
