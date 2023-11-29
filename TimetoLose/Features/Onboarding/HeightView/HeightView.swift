//
//  HeightView.swift
//  TimetoLose
//
//  Created by Ulas Goktas on 7.12.2022.
//

import SwiftUI

struct HeightView: View {
    @State private var isButtonNextDisabled = false
    @State private var heightCM = ""
    @State private var heightFT = ""
    @State private var heightINCH = ""
    @State private var measureTypeHeight = "cm"
    @State private var isMoveToNextScreen = false
    private let measureTypeList = ["cm", "ft"]
    private let placeholderOpacity = 0.5
    private let nextButtonCornerRadius: CGFloat = 100
    private let buttonWidth = UIScreen.screenWidth * 0.8
    private let textFieldLineCM = UIScreen.screenWidth * 0.6
    private let textFieldLineFT = UIScreen.screenWidth * 0.3
    private let segmentedPickerWidth = UIScreen.screenWidth * 0.3

    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Color.brandOrange)
        UISegmentedControl.appearance().backgroundColor = UIColor(Color.brandOrangeOpaque)
    }

    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            VStack(spacing: .extraLargeMediumPoint) {
                ComponentLabelHeader(text: AppText.HeightView.header, font: .bodyExtraLarge, textColor: .brandOrange)
                ComponentLabelBody(text: AppText.HeightView.body, font: .bodyRegular, textColor: .brandOrange)
                VStack {
                    // MARK: Metric Height View
                    if measureTypeHeight == "cm" {
                        TextField("", text: $heightCM)
                            .foregroundColor(.brandOrange)
                            .font(.bodyLarge)
                            .keyboardType(.numberPad)
                            .multilineTextAlignment(.center)
                            .placeholder(when: heightCM.isEmpty) {
                                Text(AppText.HeightView.placeholder)
                                    .foregroundColor(.brandOrange)
                                    .font(.bodyLarge)
                                    .opacity(placeholderOpacity)
                            }
                        Divider()
                            .frame(width: textFieldLineCM, height: .smallPoint)
                            .overlay(Color.brandOrange)
                        ComponentSpacer(direction: .vertical, size: .doubleRegularPoint)
                    // MARK: Imperial Height View
                    } else {
                        HStack {
                            VStack {
                                TextField("", text: $heightFT)
                                    .foregroundColor(.brandOrange)
                                    .font(.bodyLarge)
                                    .keyboardType(.numberPad)
                                    .multilineTextAlignment(.center)
                                    .placeholder(when: heightFT.isEmpty) {
                                        Text(AppText.HeightView.placeholderFT)
                                            .foregroundColor(.brandOrange)
                                            .font(.bodyLarge)
                                            .opacity(placeholderOpacity)
                                    }
                                Divider()
                                    .frame(width: textFieldLineFT, height: .smallPoint)
                                    .overlay(Color.brandOrange)
                                ComponentSpacer(direction: .vertical, size: .doubleRegularPoint)
                            }
                            VStack {
                                TextField("", text: $heightINCH)
                                    .foregroundColor(.brandOrange)
                                    .font(.bodyLarge)
                                    .keyboardType(.numberPad)
                                    .multilineTextAlignment(.center)
                                    .placeholder(when: heightINCH.isEmpty) {
                                        Text(AppText.HeightView.placeholderINCH)
                                            .foregroundColor(.brandOrange)
                                            .font(.bodyLarge)
                                            .opacity(placeholderOpacity)
                                    }
                                Divider()
                                    .frame(width: textFieldLineFT, height: .smallPoint)
                                    .overlay(Color.brandOrange)
                                ComponentSpacer(direction: .vertical, size: .doubleRegularPoint)
                            }
                        }
                    }
                    Picker("", selection: $measureTypeHeight) {
                        ForEach(measureTypeList, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                    .frame(width: segmentedPickerWidth)
                }
                Spacer()
                ComponentPrimaryButton(title: AppText.Common.next, titleColor: .brandOrange, buttonColor: .white, cornerRadius: nextButtonCornerRadius, width: buttonWidth, isDisabled: $isButtonNextDisabled, action: buttonNextTapped)
            }
        }
        .go(to: CurrentWeightView(), when: $isMoveToNextScreen)
    }
    private func buttonNextTapped() {
        if measureTypeHeight == "cm" {
            OnboardingModel.shared.heightInputCM = heightCM
        } else {
            OnboardingModel.shared.heightInputFT = heightFT
            OnboardingModel.shared.heightInputINCH = heightINCH
        }
        OnboardingModel.shared.measureTypeHeightInput = measureTypeHeight
        isMoveToNextScreen = true
    }
}

struct HeightView_Previews: PreviewProvider {
    static var previews: some View {
        HeightView()
    }
}
