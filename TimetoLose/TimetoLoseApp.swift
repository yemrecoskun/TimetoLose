//
//  TimetoLoseApp.swift
//  TimetoLose
//
//  Created by T66140 on 30.09.2022.
//

import SwiftUI

@main
struct TimetoLoseApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            //DashboardView().environment(\.managedObjectContext, persistenceController.container.viewContext)
            //BottomBar()
            TabViews()
        }
    }
}
