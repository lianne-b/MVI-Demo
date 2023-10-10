//
//  MVIDemoApp.swift
//  MVIDemo
//
//  Created by Ye Eun Choi on 2023/10/04.
//

import SwiftUI

@main
struct MVIDemoApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                CalculateView.build()
            }
        }
    }
}

