//
//  GoalView.swift
//  TimetoLose
//
//  Created by Ulas Goktas on 27.11.2022.
//

import SwiftUI

struct GoalView: View {
    @State private var isButtonDisabled = false
    private let buttonWidth = UIScreen.screenWidth * 0.8

    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            VStack {
                ComponentLabelHeader(text: AppText.GoalView.header, font: .bodyExtraLarge, textColor: .brandOrange)
                ComponentLabelBody(text: AppText.GoalView.body, font: .bodyRegular, textColor: .brandOrange)
                // MARK: Choices
                VStack {
                    ComponentPrimaryButton(title: AppText.GoalView.firstChoice, width: buttonWidth, titleAlignment: .leading, isDisabled: $isButtonDisabled, action: buttonAction)
                    ComponentPrimaryButton(title: AppText.GoalView.secondChoice, width: buttonWidth, titleAlignment: .leading, isDisabled: $isButtonDisabled, action: buttonAction)
                    ComponentPrimaryButton(title: AppText.GoalView.thirdChoice, width: buttonWidth, titleAlignment: .leading, isDisabled: $isButtonDisabled, action: buttonAction)
                    ComponentPrimaryButton(title: AppText.GoalView.fourthChoice, width: buttonWidth, titleAlignment: .leading, isDisabled: $isButtonDisabled, action: buttonAction)
                }
                Spacer()
                ComponentPrimaryButton(title: AppText.Common.next, titleColor: .brandOrange, buttonColor: .white, width: buttonWidth, isDisabled: $isButtonDisabled, action: buttonNextTapped)
            }
        }
    }

    private func buttonAction() {
    }

    private func buttonNextTapped() {
    }
}

struct GoalView_Previews: PreviewProvider {
    static var previews: some View {
        GoalView()
    }
}
