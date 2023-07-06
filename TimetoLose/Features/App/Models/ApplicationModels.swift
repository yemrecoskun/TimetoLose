//
//  ApplicationModels.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 26.03.2023.
//

import Foundation
import FirebaseFirestoreSwift

struct ApplicationModels: Identifiable, Codable {
    @DocumentID var id: String?
    var forceVersion: String?
    var suggestionVersion: String?
}
