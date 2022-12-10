//
//  TargetWeightView.swift
//  TimetoLose
//
//  Created by Ulas Goktas on 7.12.2022.
//

import SwiftUI

struct TargetWeightView: View {
    @State private var isButtonNextDisabled = false
    @AppStorage(AppStorageKeys.targetWeight) private var targetWeight = ""
    @State private var isMoveToNextScreen = false
    private let placeholderOpacity = 0.5
    private let nextButtonCornerRadius: CGFloat = 100
    private let buttonWidth = UIScreen.screenWidth * 0.8
    private let textFieldLine = UIScreen.screenWidth * 0.6
    private let segmentedPickerWidth = UIScreen.screenWidth * 0.3

    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Color.brandOrange)
        UISegmentedControl.appearance().backgroundColor = UIColor(Color.brandOrangeOpaque)
    }

    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            VStack(spacing: .extraLargeMediumPoint) {
                ComponentLabelHeader(text: AppText.TargetWeightView.header, font: .bodyExtraLarge, textColor: .brandOrange)
                ComponentLabelBody(text: AppText.TargetWeightView.body, font: .bodyRegular, textColor: .brandOrange)
                VStack {
                    TextField("", text: $targetWeight)
                        .foregroundColor(.brandOrange)
                        .font(.bodyLarge)
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.center)
                        .placeholder(when: targetWeight.isEmpty) {
                            Text(AppText.TargetWeightView.placeholder)
                                .foregroundColor(.brandOrange)
                                .font(.bodyLarge)
                                .opacity(placeholderOpacity)
                        }
                    Divider()
                        .frame(width: textFieldLine, height: .smallPoint)
                        .overlay(Color.brandOrange)
                    ComponentSpacer(direction: .vertical, size: .doubleRegularPoint)
                    ComponentLabelHeader(text: AppText.TargetWeightView.recommendedWeightRange, font: .bodyRegularMedium, textColor: .brandOrange)
                    // TODO: recommended weight range icin hesaplama yap
                }
                Spacer()
                ComponentPrimaryButton(title: AppText.Common.next, titleColor: .brandOrange, buttonColor: .white, cornerRadius: nextButtonCornerRadius, width: buttonWidth, isDisabled: $isButtonNextDisabled, action: buttonNextTapped)
            }
        }
        .go(to: TabViews(), when: $isMoveToNextScreen)
    }
    private func buttonNextTapped() {
        isMoveToNextScreen = true
    }
}

struct TargetWeightView_Previews: PreviewProvider {
    static var previews: some View {
        TargetWeightView()
    }
}
