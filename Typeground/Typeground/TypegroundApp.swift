//
//  TypegroundApp.swift
//  Typeground
//
//  Created by Jamie Brannan on 05/10/2025.
//

import SwiftUI
import CoreData

@main
struct TypegroundApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
