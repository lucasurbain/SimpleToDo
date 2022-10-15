//
//  SimpleToDoApp.swift
//  SimpleToDo
//
//  Created by lucas urbain on 15.10.22.
//

import SwiftUI

@main
struct SimpleToDoApp: App {
    
    let persistentContainer = CoreDataManager.shared.persistantContainer
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistentContainer.viewContext)
        }
    }
}
