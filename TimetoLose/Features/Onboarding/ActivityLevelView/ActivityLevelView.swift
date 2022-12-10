//
//  ActivityLevelView.swift
//  TimetoLose
//
//  Created by Ulas Goktas on 29.11.2022.
//

import SwiftUI

struct ActivityLevelView: View {
    @State private var isMoveToNextScreen = false
    @AppStorage(AppStorageKeys.activityLevel) private var activityLevel = ""
    private let buttonWidth = UIScreen.screenWidth * 0.8

    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            VStack {
                ComponentLabelHeader(text: AppText.ActivityLevelView.header, font: .bodyExtraLarge, textColor: .brandOrange)
                ComponentLabelBody(text: AppText.ActivityLevelView.body, font: .bodyRegular, textColor: .brandOrange)
                // MARK: Choices
                VStack {
                    ComponentButtonWithHintView(title: AppText.ActivityLevelView.firstActivityLevelTitle, hintText: AppText.ActivityLevelView.firstActivityLevelHint, width: buttonWidth, action: lightlyActiveButtonTapped)
                    ComponentButtonWithHintView(title: AppText.ActivityLevelView.secondActivityLevelTitle, hintText: AppText.ActivityLevelView.secondActivityLevelHint, width: buttonWidth, action: moderatelyActiveButtonTapped)
                    ComponentButtonWithHintView(title: AppText.ActivityLevelView.thirdActivityLevelTitle, hintText: AppText.ActivityLevelView.thirdActivityLevelHint, width: buttonWidth, action: activeButtonTapped)
                    ComponentButtonWithHintView(title: AppText.ActivityLevelView.fourthActivityLevelTitle, hintText: AppText.ActivityLevelView.fourthActivityLevelHint, width: buttonWidth, action: veryActiveButtonTapped)
                }
                Spacer()
            }
        }
        .go(to: CurrentWeightView(), when: $isMoveToNextScreen)
    }
    private func lightlyActiveButtonTapped() {
        activityLevel = InputSelections.ActivityLevel.lightlyActive
        isMoveToNextScreen = true
    }
    private func moderatelyActiveButtonTapped() {
        activityLevel = InputSelections.ActivityLevel.moderatelyActive
        isMoveToNextScreen = true
    }
    private func activeButtonTapped() {
        activityLevel = InputSelections.ActivityLevel.active
        isMoveToNextScreen = true
    }
    private func veryActiveButtonTapped() {
        activityLevel = InputSelections.ActivityLevel.veryActive
        isMoveToNextScreen = true
    }
}

struct ActivityLevelView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityLevelView()
    }
}
