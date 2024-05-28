//
//  RafandWesApp.swift
//  RafandWes
//
//  Created by Rafferty Cruikshank on 5/23/24.
//

import SwiftUI
import SwiftData

@main
struct RafandWesApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

<<<<<<< HEAD

=======
    
    
>>>>>>> 29ff6f3c7a48007e5b772984db7db7d9b38df1f9
    var body: some Scene {
        WindowGroup {
            ContentView()
            ZStack{
                Color.red
            }
        }
        .modelContainer(sharedModelContainer)
    }
}