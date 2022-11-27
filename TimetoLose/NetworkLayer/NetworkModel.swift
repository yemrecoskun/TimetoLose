//
//  NetworkModel.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 27.11.2022.
//

import Foundation


struct NetworkModel <T: Decodable> {
    init (isStatus: Status, response: T? = nil) {
        self.isStatus = isStatus
        self.response = response
    }
    public let isStatus : Status?
    public let response : T?
}
