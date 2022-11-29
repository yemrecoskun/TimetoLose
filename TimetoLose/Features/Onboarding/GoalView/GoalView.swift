//
//  GoalView.swift
//  TimetoLose
//
//  Created by Ulas Goktas on 27.11.2022.
//

import SwiftUI

struct GoalView: View {
    @State private var isButtonDisabled = false
    @State private var isFirstChoiceSelected = false
    @State private var isSecondChoiceSelected = false
    @State private var isThirdChoiceSelected = false
    @State private var isFourthChoiceSelected = false
    private let buttonWidth = UIScreen.screenWidth * 0.8

    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            VStack {
                ComponentLabelHeader(text: AppText.GoalView.header, font: .bodyExtraLarge, textColor: .brandOrange)
                ComponentLabelBody(text: AppText.GoalView.body, font: .bodyRegular, textColor: .brandOrange)
                // MARK: Choices
                VStack {
                    ComponentMultipleSelectionPrimaryButton(title: AppText.GoalView.firstChoice, isSelected: $isFirstChoiceSelected, unselectedImageURL: AppIcon.Name.unselectedCheckMark.rawValue, selectedImageURL: AppIcon.Name.selectedCheckMark.rawValue, action: firstSelectionAction)
                    ComponentMultipleSelectionPrimaryButton(title: AppText.GoalView.secondChoice, isSelected: $isSecondChoiceSelected, unselectedImageURL: AppIcon.Name.unselectedCheckMark.rawValue, selectedImageURL: AppIcon.Name.selectedCheckMark.rawValue, action: secondSelectionAction)
                    ComponentMultipleSelectionPrimaryButton(title: AppText.GoalView.thirdChoice, isSelected: $isThirdChoiceSelected, unselectedImageURL: AppIcon.Name.unselectedCheckMark.rawValue, selectedImageURL: AppIcon.Name.selectedCheckMark.rawValue, action: thirdSelectionAction)
                    ComponentMultipleSelectionPrimaryButton(title: AppText.GoalView.fourthChoice, isSelected: $isFourthChoiceSelected, unselectedImageURL: AppIcon.Name.unselectedCheckMark.rawValue, selectedImageURL: AppIcon.Name.selectedCheckMark.rawValue, action: fourthSelectionAction)
                }
                Spacer()
                ComponentPrimaryButton(title: AppText.Common.next, titleColor: .brandOrange, buttonColor: .white, width: buttonWidth, isDisabled: $isButtonDisabled, action: buttonNextTapped)
            }
        }
    }

    private func firstSelectionAction() {
        isFirstChoiceSelected.toggle()
    }

    private func secondSelectionAction() {
        isSecondChoiceSelected.toggle()
    }

    private func thirdSelectionAction() {
        isThirdChoiceSelected.toggle()
    }

    private func fourthSelectionAction() {
        isFourthChoiceSelected.toggle()
    }

    private func buttonNextTapped() {
    }
}

struct GoalView_Previews: PreviewProvider {
    static var previews: some View {
        GoalView()
    }
}
