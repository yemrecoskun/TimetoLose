//
//  CoreDataManager.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 7.04.2023.
//

import CoreData

class CoreDataModel: ObservableObject {
    let container = NSPersistentContainer(name: "CoreDataModel")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core data failed to load: \(error.localizedDescription)")
            }
        }
    }
}


class CoreDataManager {
    // Core Data stack properties go here
    
    func saveContext() {
        // Save Core Data context
    }
    
    func addData() {
        // Add data to Core Data
    }
    
    func deleteData() {
        // Delete data from Core Data
    }
    
    func fetchData() {
        // Fetch data from Core Data
    }
}
