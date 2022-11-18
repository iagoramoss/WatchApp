//
//  Challenge_Apple_WatchApp.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Dessana Santos on 07/11/22.
//

import SwiftUI
import Combine

@main
struct Challenge_Apple_Watch_Watch_AppApp: App {
    @ObservedObject var eatingTime = EatingTime()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(eatingTime)
        }
    }
}
