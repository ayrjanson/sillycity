//
//  SillyCityApp.swift
//  SillyCity
//
//  Created by Anna Yrjanson and John Nicholson on 4/9/22.
//

import SwiftUI



// Main Function for entry point for the app
@main
struct SillyCityApp: App {
    
    // Creates the app information variable shared across Swift files
    @StateObject var appInfo = AppInformation()
    var body: some Scene {
        WindowGroup {
            // Sets the first view to be ContentView with the environmentObject app info
            ContentView().environmentObject(appInfo)
        }
    }

}

