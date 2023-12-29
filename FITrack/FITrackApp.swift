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
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            FoodTrackView()
        }
    }
    
    init(){
        for family in UIFont.familyNames {
             print(family)
             for names in UIFont.fontNames(forFamilyName: family){
//             print("    - \(names)")
             print("Font.custom(\"\(names)\", size: size)")

             }
        }
    }
}
