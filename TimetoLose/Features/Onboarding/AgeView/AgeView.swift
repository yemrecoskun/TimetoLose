//
//  AgeView.swift
//  TimetoLose
//
//  Created by Ulas Goktas on 7.12.2022.
//

import SwiftUI

struct AgeView: View {
    @State private var isButtonNextDisabled = false
    @State private var age = ""
    @State private var isMoveToNextScreen = false
    private let placeholderOpacity = 0.5
    private let nextButtonCornerRadius: CGFloat = 100
    private let buttonWidth = UIScreen.screenWidth * 0.8
    private let textFieldLine = UIScreen.screenWidth * 0.6

    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            VStack(spacing: .extraLargeMediumPoint) {
                ComponentLabelHeader(text: AppText.AgeView.header, font: .bodyExtraLarge, textColor: .brandOrange)
                ComponentLabelBody(text: AppText.AgeView.body, font: .bodyRegular, textColor: .brandOrange)
                VStack {
                    TextField("", text: $age)
                        .foregroundColor(.brandOrange)
                        .font(.bodyLarge)
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.center)
                        .placeholder(when: age.isEmpty) {
                            Text(AppText.AgeView.placeholder)
                                .foregroundColor(.brandOrange)
                                .font(.bodyLarge)
                                .opacity(placeholderOpacity)
                        }
                    Divider()
                        .frame(width: textFieldLine, height: .smallPoint)
                        .overlay(Color.brandOrange)
                }
                Spacer()
                ComponentPrimaryButton(title: AppText.Common.next, titleColor: .brandOrange, buttonColor: .white, cornerRadius: nextButtonCornerRadius, width: buttonWidth, isDisabled: $isButtonNextDisabled, action: buttonNextTapped)
            }
        }
        .go(to: HeightView(), when: $isMoveToNextScreen)
    }
    private func buttonNextTapped() {
        OnboardingModel.shared.ageInput = age
        isMoveToNextScreen = true
    }
}

struct AgeView_Previews: PreviewProvider {
    static var previews: some View {
        AgeView()
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .center,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
