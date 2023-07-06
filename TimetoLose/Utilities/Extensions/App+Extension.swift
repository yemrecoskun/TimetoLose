//
//  App+Extension.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 5.04.2023.
//

import Foundation

extension Bundle {
    static var appVersion: String {
        return Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? ""
    }
    
    static var buildNumber: String {
        return Bundle.main.infoDictionary?["CFBundleVersion"] as? String ?? ""
    }
}
