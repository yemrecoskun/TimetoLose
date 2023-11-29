//
//  GoalView.swift
//  TimetoLose
//
//  Created by Ulas Goktas on 27.11.2022.
//

import SwiftUI

//struct GoalView: View {
//    @State private var isButtonNextDisabled = false
//    @State private var isFirstChoiceSelected = false
//    @State private var isSecondChoiceSelected = false
//    @State private var isThirdChoiceSelected = false
//    @State private var isFourthChoiceSelected = false
//    @State private var isMoveToNextScreen = false
//    private let nextButtonCornerRadius: CGFloat = 100
//    private let buttonWidth = UIScreen.screenWidth * 0.8
//
//    var body: some View {
//        ZStack {
//            Color.background.ignoresSafeArea()
//            VStack(spacing: .extraLargeMediumPoint) {
//                ComponentLabelHeader(text: AppText.GoalView.header, font: .bodyExtraLarge, textColor: .brandOrange)
//                ComponentLabelBody(text: AppText.GoalView.body, font: .bodyRegular, textColor: .brandOrange)
//                // MARK: Choices
//                VStack(spacing: .extraLargeMediumPoint) {
//                    ComponentMultipleSelectionPrimaryButton(title: AppText.GoalView.firstChoice, isSelected: $isFirstChoiceSelected, action: firstSelectionAction)
//                    ComponentMultipleSelectionPrimaryButton(title: AppText.GoalView.secondChoice, isSelected: $isSecondChoiceSelected, action: secondSelectionAction)
//                    ComponentMultipleSelectionPrimaryButton(title: AppText.GoalView.thirdChoice, isSelected: $isThirdChoiceSelected, action: thirdSelectionAction)
//                    ComponentMultipleSelectionPrimaryButton(title: AppText.GoalView.fourthChoice, isSelected: $isFourthChoiceSelected, action: fourthSelectionAction)
//                }
//                Spacer()
//                ComponentPrimaryButton(title: AppText.Common.next, titleColor: .brandOrange, buttonColor: .white, cornerRadius: nextButtonCornerRadius, width: buttonWidth, isDisabled: $isButtonNextDisabled, action: buttonNextTapped)
//            }
//        }
//        .go(to: GenderView(), when: $isMoveToNextScreen)
//    }
//
//    private func firstSelectionAction() {
//        isFirstChoiceSelected.toggle()
//    }
//
//    private func secondSelectionAction() {
//        isSecondChoiceSelected.toggle()
//    }
//
//    private func thirdSelectionAction() {
//        isThirdChoiceSelected.toggle()
//    }
//
//    private func fourthSelectionAction() {
//        isFourthChoiceSelected.toggle()
//    }
//
//    private func buttonNextTapped() {
//        isMoveToNextScreen = true
//    }
//}
//
//struct GoalView_Previews: PreviewProvider {
//    static var previews: some View {
//        GoalView()
//    }
//}
