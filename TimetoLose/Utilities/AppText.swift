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
    
    static func getText(_ text: Text) -> String {
        return text.rawValue
    }
}
