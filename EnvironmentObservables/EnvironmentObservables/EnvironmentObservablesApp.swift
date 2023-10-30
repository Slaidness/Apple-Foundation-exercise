//
//  EnvironmentObservablesApp.swift
//  EnvironmentObservables
//
//  Created by Antonio on 25/10/23.
//

import SwiftUI

@main
struct EnvironmentObservablesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ListItems())
        }
    }
}
