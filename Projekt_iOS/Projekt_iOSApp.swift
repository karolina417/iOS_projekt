//
//  Projekt_iOSApp.swift
//  Projekt_iOS
//
//  Created by Adam Sidor on 15/05/2026.
//

import SwiftUI
import CoreData

@main
struct Projekt_iOSApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
