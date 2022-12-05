//
//  AnyMedicationView.swift
//  TimetoLose
//
//  Created by Ulas Goktas on 5.12.2022.
//

import SwiftUI

struct AnyMedicationView: View {
    @State private var isButtonNextDisabled = false
    @State private var isNoMedicationSelecected = false
    @State private var isVitaminAndMineralSelected = false
    @State private var isHormoneSelected = false
    @State private var isAntibioticSelected = false
    @State private var isAnxietySelected = false
    @State private var isSupplementSelected = false
    @State private var isOtherMedicationSelected = false
    private let buttonWidth = UIScreen.screenWidth * 0.8

    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            ScrollView {
                VStack {
                    ComponentLabelHeader(text: AppText.AnyMedicationView.header, font: .bodyExtraLarge, textColor: .brandOrange)
                    ComponentLabelBody(text: AppText.AnyMedicationView.body, font: .bodyRegular, textColor: .brandOrange)
                    // MARK: Choices
                    VStack {
                        ComponentMultipleSelectionPrimaryButton(title: AppText.AnyMedicationView.no, isSelected: $isNoMedicationSelecected, unselectedImageURL: "", selectedImageURL: "", action: buttonNextTapped)
                        ComponentMultipleSelectionPrimaryButton(title: AppText.AnyMedicationView.vitaminAndMineral, isSelected: $isVitaminAndMineralSelected, action: vitaminAndMineralAction)
                        ComponentMultipleSelectionPrimaryButton(title: AppText.AnyDiseaseView.hypertension, isSelected: $isHormoneSelected, action: hormoneAction)
                        ComponentMultipleSelectionPrimaryButton(title: AppText.AnyDiseaseView.hypotension, isSelected: $isAntibioticSelected, action: antibioticAction)
                        ComponentMultipleSelectionPrimaryButton(title: AppText.AnyDiseaseView.nephropathy, isSelected: $isAnxietySelected, action: anxietyAction)
                        ComponentMultipleSelectionPrimaryButton(title: AppText.AnyDiseaseView.liver, isSelected: $isSupplementSelected, action: supplementAction)
                        ComponentMultipleSelectionPrimaryButton(title: AppText.AnyDiseaseView.cancer, isSelected: $isOtherMedicationSelected, action: otherMeticationAction)
                    }
                    Spacer()
                    ComponentPrimaryButton(title: AppText.Common.next, titleColor: .brandOrange, buttonColor: .white, width: buttonWidth, isDisabled: $isButtonNextDisabled, action: buttonNextTapped)
                }
            }
        }
    }
    private func vitaminAndMineralAction() {
        isVitaminAndMineralSelected.toggle()
    }

    private func hormoneAction() {
        isHormoneSelected.toggle()
    }

    private func antibioticAction() {
        isAntibioticSelected.toggle()
    }

    private func anxietyAction() {
        isAnxietySelected.toggle()
    }

    private func supplementAction() {
        isSupplementSelected.toggle()
    }

    private func otherMeticationAction() {
        isOtherMedicationSelected.toggle()
    }

    private func buttonNextTapped() {
    }
}

struct AnyMedicationView_Previews: PreviewProvider {
    static var previews: some View {
        AnyMedicationView()
    }
}
