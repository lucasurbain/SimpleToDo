//
//  CoreDataManager.swift
//  SimpleToDo
//
//  Created by lucas urbain on 15.10.22.
//

import Foundation
import CoreData

class CoreDataManager {
    let persistantContainer: NSPersistentContainer
    static let shared: CoreDataManager = CoreDataManager()
    
    
    private init() {
        
        persistantContainer = NSPersistentContainer(name: "SimpleToDoModel")
        persistantContainer.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Unable to initialize Core Data \(error)")
            }
            
        }
    }
}
