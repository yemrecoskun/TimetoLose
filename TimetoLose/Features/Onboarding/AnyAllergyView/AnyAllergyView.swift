//
//  AnyAllergyView.swift
//  TimetoLose
//
//  Created by Ulas Goktas on 5.12.2022.
//

import SwiftUI

struct AnyAllergyView: View {
    @State private var isButtonNextDisabled = false
    @State private var isNoAllergySelecected = false
    @State private var isGlutenAllergySelected = false
    @State private var isWheatAllergySelected = false
    @State private var isLactoseAllergySelected = false
    @State private var isEggAllergySelected = false
    @State private var isFishAllergySelected = false
    @State private var isNutsAllergySelected = false
    private let buttonWidth = UIScreen.screenWidth * 0.8

    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            ScrollView {
                VStack {
                    ComponentLabelHeader(text: AppText.AnyAllergyView.header, font: .bodyExtraLarge, textColor: .brandOrange)
                    ComponentLabelBody(text: AppText.AnyAllergyView.body, font: .bodyRegular, textColor: .brandOrange)
                    // MARK: Choices
                    VStack {
                        ComponentMultipleSelectionPrimaryButton(title: AppText.AnyAllergyView.no, isSelected: $isNoAllergySelecected, unselectedImageURL: "", selectedImageURL: "", action: buttonNextTapped)
                        ComponentMultipleSelectionPrimaryButton(title: AppText.AnyAllergyView.gluten, isSelected: $isGlutenAllergySelected, action: glutenAllergyAction)
                        ComponentMultipleSelectionPrimaryButton(title: AppText.AnyAllergyView.wheat, isSelected: $isWheatAllergySelected, action: wheatAllergyAction)
                        ComponentMultipleSelectionPrimaryButton(title: AppText.AnyAllergyView.lactose, isSelected: $isLactoseAllergySelected, action: lactoseAllergyAction)
                        ComponentMultipleSelectionPrimaryButton(title: AppText.AnyAllergyView.egg, isSelected: $isEggAllergySelected, action: eggAllergyAction)
                        ComponentMultipleSelectionPrimaryButton(title: AppText.AnyAllergyView.fish, isSelected: $isFishAllergySelected, action: fishAllergyAction)
                        ComponentMultipleSelectionPrimaryButton(title: AppText.AnyAllergyView.nuts, isSelected: $isNutsAllergySelected, action: nutsAllergyAction)
                    }
                    Spacer()
                    ComponentPrimaryButton(title: AppText.Common.next, titleColor: .brandOrange, buttonColor: .white, width: buttonWidth, isDisabled: $isButtonNextDisabled, action: buttonNextTapped)
                }
            }
        }
    }
    private func glutenAllergyAction() {
        isGlutenAllergySelected.toggle()
    }

    private func wheatAllergyAction() {
        isWheatAllergySelected.toggle()
    }

    private func lactoseAllergyAction() {
        isLactoseAllergySelected.toggle()
    }

    private func eggAllergyAction() {
        isEggAllergySelected.toggle()
    }

    private func fishAllergyAction() {
        isFishAllergySelected.toggle()
    }

    private func nutsAllergyAction() {
        isNutsAllergySelected.toggle()
    }

    private func buttonNextTapped() {
    }
}

struct AnyAllergyView_Previews: PreviewProvider {
    static var previews: some View {
        AnyAllergyView()
    }
}
