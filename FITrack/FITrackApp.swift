//
//  FITrackApp.swift
//  FITrack
//
//  Created by Dharam Dhurandhar on 29/12/23.
//

import SwiftUI

@main
struct FITrackApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
