//
//  MemorizeDemoApp.swift
//  MemorizeDemo
//
//  Created by Artem Paliutin on 30/05/2022.
//

import SwiftUI

@main
struct MemorizeDemoApp: App {
    @StateObject var memoryGameViewModel = MemoryGameViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(memoryGameViewModel)
        }
    }
}
