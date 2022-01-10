//
//  scoutingNLApp.swift
//  scoutingNL
//
//  Created by Thijs Govers on 30/11/2021.
//

import SwiftUI

@main
struct ScoutingNLApp: App {
    @AppStorage("Settings.darkModeKey") var darkMode = false
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
