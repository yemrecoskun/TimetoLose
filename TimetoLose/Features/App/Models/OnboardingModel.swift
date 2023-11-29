//
//  OnboardingModel.swift
//  TimetoLose
//
//  Created by Ulas Goktas on 9.08.2023.
//


import RealmSwift

final class OnboardingModel: Object, ObjectKeyIdentifiable {
    static let shared = OnboardingModel()

    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var goalInput: Int
    @Persisted var genderInput: String
    @Persisted var ageInput: String
    @Persisted var heightInputCM: String
    @Persisted var heightInputFT: String
    @Persisted var heightInputINCH: String
    @Persisted var measureTypeHeightInput: String
    @Persisted var currentWeightInput: String
    @Persisted var measureTypeWeightInput: String
    @Persisted var targetWeightInput: String
    @Persisted var activityLevelInput: String
    @Persisted var specificDietInput: String
    @Persisted var anySnackInput: String
    @Persisted var anyMedicationInput: Int
    @Persisted var anyAllergyInput: String
}
