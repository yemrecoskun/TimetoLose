//
//  GenderView.swift
//  TimetoLose
//
//  Created by Ulas Goktas on 29.11.2022.
//

import SwiftUI

struct GenderView: View {
    private let buttonWidth = UIScreen.screenWidth * 0.6
    @AppStorage(AppStorageKeys.gender) private var gender = ""
    @State private var isMoveToNextScreen = false
    @State private var isDisabled = false
    
    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            VStack {
                ComponentLabelHeader(text: AppText.GenderView.header, font: .bodyExtraLarge, textColor: .brandOrange)
                ComponentLabelBody(text: AppText.GenderView.body, font: .bodyRegular, textColor: .brandOrange)
                // MARK: Choices
                VStack {
                    ComponentPrimaryButton(title: AppText.GenderView.female,showLeftImage: true, leftImageURL: AppIcon.Name.female.rawValue, width: buttonWidth, titleAlignment: .leading, isDisabled: $isDisabled, action: femaleButtonTapped)
                    ComponentPrimaryButton(title: AppText.GenderView.male, showLeftImage: true, leftImageURL: AppIcon.Name.male.rawValue, width: buttonWidth, titleAlignment: .leading, isDisabled: $isDisabled, action: maleButtonTapped)
                }
                Spacer()
            }
        }
        .go(to: AgeView(), when: $isMoveToNextScreen)
    }
    private func femaleButtonTapped() {
        gender = InputSelections.Gender.female
        isMoveToNextScreen = true
    }

    private func maleButtonTapped() {
        gender = InputSelections.Gender.male
        isMoveToNextScreen = true
    }
}

struct GenderView_Previews: PreviewProvider {
    static var previews: some View {
        GenderView()
    }
}
