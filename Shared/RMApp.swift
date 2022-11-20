//
//  R&MApp.swift
//  Shared
//
//  Created by Dmitry Kosik on 20.06.22.
//

import SwiftUI

@main
struct RMApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(RequestManager.shared)
        }
    }
}
