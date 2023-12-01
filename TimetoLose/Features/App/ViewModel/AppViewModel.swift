//
//  AppViewModel.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 5.04.2023.
//

import Foundation
import FirebaseFirestore
import Firebase

class AppViewModel: ObservableObject {
    @Published var app: AppVersion = .undefield
    
    init() {
        getApplicationVersion()
    }
    
    private func getApplicationVersion() {
        let version = Firestore.firestore().collection("application").document("appVersion")
        version.getDocument { document, error in
            if let document = document, document.exists {
                let appModels = try? document.data(as: ApplicationModels.self)
                let appVersion = Bundle.appVersion
                if appModels?.forceVersion ?? "" > appVersion {
                    self.app = .forceUpdate
                } else if appModels?.suggestionVersion ?? "" > appVersion {
                    self.app = .suggestionUpdate
                } else {
                    self.app = .done
                }
            } else {
                self.app = .done
                print("Document does not exist")
            }
        }
    }
}
