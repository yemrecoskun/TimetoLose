//
//  CurrentWeightView.swift
//  TimetoLose
//
//  Created by Ulas Goktas on 7.12.2022.
//

import SwiftUI

struct CurrentWeightView: View {
    @State private var isButtonNextDisabled = false
    @State private var weight = ""
    @State private var measureType = "kg"
    private let measureTypeList = ["kg", "lb"]
    private let placeholderOpacity = 0.5
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
            VStack {
                ComponentLabelHeader(text: AppText.CurrentWeightView.header, font: .bodyExtraLarge, textColor: .brandOrange)
                ComponentLabelBody(text: AppText.CurrentWeightView.body, font: .bodyRegular, textColor: .brandOrange)
                VStack {
                    TextField("", text: $weight)
                        .foregroundColor(.brandOrange)
                        .font(.bodyLarge)
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.center)
                        .placeholder(when: weight.isEmpty) {
                            Text(AppText.CurrentWeightView.placeholder)
                                .foregroundColor(.brandOrange)
                                .font(.bodyLarge)
                                .opacity(placeholderOpacity)
                        }
                    Divider()
                        .frame(width: textFieldLine, height: .smallPoint)
                        .overlay(Color.brandOrange)
                    Picker("", selection: $measureType) {
                        ForEach(measureTypeList, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                    .frame(width: segmentedPickerWidth)
                }
                Spacer()
                ComponentPrimaryButton(title: AppText.Common.next, titleColor: .brandOrange, buttonColor: .white, width: buttonWidth, isDisabled: $isButtonNextDisabled, action: buttonNextTapped)
            }
        }
    }
    private func buttonNextTapped() {
    }
}

struct CurrentWeightView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentWeightView()
    }
}
