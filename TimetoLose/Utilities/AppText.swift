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
    }

    struct Common {
        static let next = "Next"
    }

    struct GoalView {
        static let header = "What's your goal?"
        static let body = "We'll personalize recommendations based on your goals"
        static let firstChoice = "Healtier life"
        static let secondChoice = "Boost my energy"
        static let thirdChoice = "Stay motivated"
        static let fourthChoice = "Feel better about my body"
    }
    
    static func getText(_ text: Text) -> String {
        return text.rawValue
    }
}
