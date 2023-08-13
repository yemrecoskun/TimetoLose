//
//  ActivityLevelView.swift
//  TimetoLose
//
//  Created by Ulas Goktas on 29.11.2022.
//

import SwiftUI
import RealmSwift

struct ActivityLevelView: View {
    @State private var isMoveToNextScreen = false
    @State private var activityLevel = ""
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
        .go(to: TabViews(), when: $isMoveToNextScreen)
    }
    private func saveOnboardingObjectToRealm() {
        do {
            let realm = try Realm()
            try realm.write {
                realm.add(OnboardingModel.shared)
            }
        } catch {
            print("Realm write error: \(error)")
        }
    }
    private func lightlyActiveButtonTapped() {
        OnboardingModel.shared.activityLevelInput = InputSelections.ActivityLevel.lightlyActive
        saveOnboardingObjectToRealm()
        isMoveToNextScreen = true
    }
    private func moderatelyActiveButtonTapped() {
        OnboardingModel.shared.activityLevelInput = InputSelections.ActivityLevel.moderatelyActive
        saveOnboardingObjectToRealm()
        isMoveToNextScreen = true
    }
    private func activeButtonTapped() {
        OnboardingModel.shared.activityLevelInput = InputSelections.ActivityLevel.active
        saveOnboardingObjectToRealm()
        isMoveToNextScreen = true
    }
    private func veryActiveButtonTapped() {
        OnboardingModel.shared.activityLevelInput = InputSelections.ActivityLevel.veryActive
        saveOnboardingObjectToRealm()
        isMoveToNextScreen = true
    }
}

struct ActivityLevelView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityLevelView()
    }
}
