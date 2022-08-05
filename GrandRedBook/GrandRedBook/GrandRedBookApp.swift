//
//  GrandRedBookApp.swift
//  GrandRedBook
//
//  Created by Gang Wen on 2022/8/5.
//

import SwiftUI

@main
struct GrandRedBookApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
