//
//  SillyCityApp.swift
//  SillyCity
//
//  Created by Anna Yrjanson and John Nicholson on 4/9/22.
//

import SwiftUI


@main
struct SillyCityApp: App {
    @StateObject var appInfo = AppInformation()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(appInfo)
        }
    }

}

