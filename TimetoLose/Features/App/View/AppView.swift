//
//  AppView.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 5.04.2023.
//

import Foundation
import SwiftUI
import RealmSwift

enum AppVersion {
    case forceUpdate
    case suggestionUpdate
    case done
    case undefield
}
public struct AppView : View {
    init() {
        RealmMigrator.performMigration()
    }
    
    @StateObject var viewModel = AppViewModel()
    
    public var body: some View {
        Group {
            switch viewModel.app {
            case .forceUpdate:
                Text("")
                    .alert(isPresented: .constant(true)) {
                        Alert(title: Text("Güncelleme Gerekli"),
                              message: Text("Devam etmek için uygulamanın son sürümünü güncelleyin."),
                              primaryButton: .default(Text("Güncelle")) {
                            print("Güncellendi!")
                        },
                              secondaryButton: .default(Text("Vazgeç")) {
                            print("Close")
                            exit(0)
                        })
                    }
            case .suggestionUpdate:
                Text("")
                    .alert(isPresented: .constant(true)) {
                        Alert(title: Text("Güncel Versiyon Mevcut"),
                              message: Text("Daha iyi bir deneyim için mobil uygulamanızı güncellemenizi tavsiye ederiz."),
                              primaryButton: .default(Text("Güncelle")) {
                            print("Güncellendi!")
                        },
                              secondaryButton: .default(Text("Güncellemeden Devam Et")) {
                            viewModel.app = .done
                        })
                    }
            case .done:
                TabViews()
            case .undefield:
                ProgressView()
            }
        }
    }
}

enum RealmMigrator {
    static func performMigration() {
        let config = Realm.Configuration(
            schemaVersion: 2,
            migrationBlock: { migration, oldSchemaVersion in
                if oldSchemaVersion < 2 {
                    migration.enumerateObjects(ofType: OnboardingModel.className()) { oldObject, newObject in
                    }
                }
            }
        )
        
        Realm.Configuration.defaultConfiguration = config
        
        do {
            let _ = try Realm()
        } catch {
            print("Realm Migration Error: \(error)")
        }
    }
}
