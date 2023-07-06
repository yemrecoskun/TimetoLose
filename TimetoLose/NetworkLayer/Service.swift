//
//  Service.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 27.11.2022.
//

import Foundation

struct Service {
    static let baseURL = "https://api"
    
    enum EndPoint: String {
        case getCustomerPromoCodeDetails = "/Get"
    }
    
}
