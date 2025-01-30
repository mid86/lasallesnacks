//
//  lasallesnacksApp.swift
//  Shared
//
//  Created by qasim on 2025-01-29.
//

import SwiftUI

@main
struct lasallesnacksApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
