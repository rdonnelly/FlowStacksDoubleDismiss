//
//  FlowStacksDoubleDismissApp.swift
//  FlowStacksDoubleDismiss
//
//  Created by Ryan Donnelly on 11/2/23.
//

import SwiftUI

@main
struct FlowStacksDoubleDismissApp: App {
    var body: some Scene {
        let coordinatorViewModel = AppCoordinatorViewModel()
        
        return WindowGroup {
            return AppCoordinator(coordinatorViewModel: coordinatorViewModel)
        }
    }
}
