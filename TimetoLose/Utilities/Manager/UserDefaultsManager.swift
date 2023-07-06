//
//  UserDefaultsManager.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 5.04.2023.
//

import Foundation

struct UserDefaultsManager {
    
    static let shared = { UserDefaultsManager() }
    
    enum key: String {
        case userName
        
        
        func get() -> String? {
            return UserDefaults.standard.string(forKey: self.rawValue)
        }
        func set(_ value: String) {
            UserDefaults.standard.set(value, forKey: self.rawValue)
        }
    }
}
