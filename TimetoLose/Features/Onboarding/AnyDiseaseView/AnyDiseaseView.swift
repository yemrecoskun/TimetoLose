//
//  AnyDiseaseView.swift
//  TimetoLose
//
//  Created by Ulas Goktas on 29.11.2022.
//

import SwiftUI

struct AnyDiseaseView: View {
    @State private var isButtonNextDisabled = false
    @State private var isNoDiseaseSelected = false
    @State private var isDiabetesSelected = false
    @State private var isHypertensionSelected = false
    @State private var isHypotensionSelected = false
    @State private var isNephropathySelected = false
    @State private var isLiverSelected = false
    @State private var isCancerSelected = false
    @State private var isAutoImmuneSelected = false
    @State private var isMetabolicSelected = false
    @State private var isOtherSelected = false
    private let buttonWidth = UIScreen.screenWidth * 0.8

    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            ScrollView(showsIndicators: false) {
                VStack {
                    ComponentLabelHeader(text: AppText.AnyDiseaseView.header, font: .bodyExtraLarge, textColor: .brandOrange)
                    ComponentLabelBody(text: AppText.AnyDiseaseView.body, font: .bodyRegular, textColor: .brandOrange)
                    // MARK: Choices
                    VStack {
                        ComponentMultipleSelectionPrimaryButton(title: AppText.AnyDiseaseView.noDisease, isSelected: $isNoDiseaseSelected, unselectedImageURL: "", selectedImageURL: "", action: buttonNextTapped)
                        ComponentMultipleSelectionPrimaryButton(title: AppText.AnyDiseaseView.diabetes, isSelected: $isDiabetesSelected, action: diabetesSelectionAction)
                        ComponentMultipleSelectionPrimaryButton(title: AppText.AnyDiseaseView.hypertension, isSelected: $isHypertensionSelected, action: hypertensionSelectionAction)
                        ComponentMultipleSelectionPrimaryButton(title: AppText.AnyDiseaseView.hypotension, isSelected: $isHypotensionSelected, action: hypotensionSelectionAction)
                        ComponentMultipleSelectionPrimaryButton(title: AppText.AnyDiseaseView.nephropathy, isSelected: $isNephropathySelected, action: nephropathySelectionAction)
                        ComponentMultipleSelectionPrimaryButton(title: AppText.AnyDiseaseView.liver, isSelected: $isLiverSelected, action: liverSelectionAction)
                        ComponentMultipleSelectionPrimaryButton(title: AppText.AnyDiseaseView.cancer, isSelected: $isCancerSelected, action: cancerSelectionAction)
                        ComponentMultipleSelectionPrimaryButton(title: AppText.AnyDiseaseView.autoImmune, isSelected: $isAutoImmuneSelected, action: autoImmuneSelectionAction)
                        ComponentMultipleSelectionPrimaryButton(title: AppText.AnyDiseaseView.metabolic, isSelected: $isMetabolicSelected, action: metabolicSelectionAction)
                        ComponentMultipleSelectionPrimaryButton(title: AppText.AnyDiseaseView.other, isSelected: $isOtherSelected, action: otherSelectionAction)
                    }
                    Spacer()
                    ComponentPrimaryButton(title: AppText.Common.next, titleColor: .brandOrange, buttonColor: .white, width: buttonWidth, isDisabled: $isButtonNextDisabled, action: buttonNextTapped)
                }
            }
        }
    }
    private func diabetesSelectionAction() {
        isDiabetesSelected.toggle()
    }

    private func hypertensionSelectionAction() {
        isHypertensionSelected.toggle()
    }

    private func hypotensionSelectionAction() {
        isHypotensionSelected.toggle()
    }

    private func nephropathySelectionAction() {
        isNephropathySelected.toggle()
    }

    private func liverSelectionAction() {
        isLiverSelected.toggle()
    }

    private func cancerSelectionAction() {
        isCancerSelected.toggle()
    }

    private func autoImmuneSelectionAction() {
        isAutoImmuneSelected.toggle()
    }

    private func metabolicSelectionAction() {
        isMetabolicSelected.toggle()
    }

    private func otherSelectionAction() {
        isOtherSelected.toggle()
    }

    private func buttonNextTapped() {
    }
}

struct AnyDiseaseView_Previews: PreviewProvider {
    static var previews: some View {
        AnyDiseaseView()
    }
}
