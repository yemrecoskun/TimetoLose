//
//  AppText.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 27.11.2022.
//

import Foundation

struct AppText {
    enum Text: String {
        case welcome = "TimeToLose' ye Hoşgeldiniz!"
        case summaryDayTitle = "Günün Özeti"
    }

    struct Common {
        static let next = "Next"
    }

    struct GoalView {
        static let header = "What's your goal?"
        static let body = "We'll personalize recommendations based on your goals."
        static let firstChoice = "Healtier life"
        static let secondChoice = "Boost my energy"
        static let thirdChoice = "Stay motivated"
        static let fourthChoice = "Feel better about my body"
    }

    struct GenderView {
        static let header = "What's your gender?"
        static let body = "We need to know your gender to accurately calculate your daily calorie goal."
        static let female = "Female"
        static let male = "Male"
    }

    struct ActivityLevelView {
        static let header = "How active are you?"
        static let body = "Knowing your daily activity level helps us calculate your calorie need more accurately."
        static let firstActivityLevelTitle = "Lightly active"
        static let firstActivityLevelHint = "Mostly sitting, e.g office worker"
        static let secondActivityLevelTitle = "Moderately active"
        static let secondActivityLevelHint = "Mostly standing, e.g teacher"
        static let thirdActivityLevelTitle = "Active"
        static let thirdActivityLevelHint = "Mostly walking, e.g salesperson"
        static let fourthActivityLevelTitle = "Very active"
        static let fourthActivityLevelHint = "Physically demanding, e.g builder"
    }

    struct SpecificDietView {
        static let header = "Do you follow a specific diet?"
        static let body = "We'll adapt our recommendations to your preferences."
        static let firstDietTitle = "Classic"
        static let firstDietHint = "I have no dietary preferences"
        static let secondDietTitle = "Pescaterian"
        static let secondDietHint = "I eat seafood but not meat"
        static let thirdDietTitle = "Vegetarian"
        static let thirdDietHint = "I'dont eat any meat or seafood"
        static let fourthDietTitle = "Vegan"
        static let fourthDietHint = "I'dont eat animal products"
    }

    struct AnySnackView {
        static let header = "Do you have any snack?"
        static let body = "We'll personalize recommendations based on your eating habits."
        static let no = "No"
        static let one = "1"
        static let two = "2"
        static let three = "3"
        static let four = "4"
    }

    struct AnyDiseaseView {
        static let header = "Do you have any disease?"
        static let body = "We'll personalize recommendation based on your health conditions."
        static let noDisease = "No disease"
        static let diabetes = "Diabetes"
        static let hypertension = "Hypertension"
        static let hypotension = "Hypotension"
        static let nephropathy = "Nephropathy"
        static let liver = "Liver"
        static let cancer = "Cancer"
        static let autoImmune = "Auto-Immune"
        static let metabolic = "Metabolic"
        static let other = "Other"
    }

    struct AnyMedicationView {
        static let header = "Are you taking any medications?"
        static let body = "We'll personalize recommendations based on your health conditions."
        static let no = "No medications"
        static let vitaminAndMineral = "Vitamins and Minerals"
        static let hormone = "Hormones"
        static let antibiotic = "Antibiotics"
        static let anxiety = "Anxiety Medications"
        static let supplement = "Supplement"
        static let other = "Other"
    }

    static func getText(_ text: Text) -> String {
        return text.rawValue
    }
}
