//
//  AppCoordinatorViewModel.swift
//  FlowStacksDoubleDismiss
//
//  Created by Ryan Donnelly on 11/2/23.
//

import Foundation
import FlowStacks

enum Screen {
    case stack(ScreenViewModel)
    case modal(ScreenViewModel)
}

class AppCoordinatorViewModel: ObservableObject {
    @Published var routes: Routes<Screen> = []

    init() {
        self.routes = [.root(.stack(.init(push: push, goBack: goBack, goBackToRoot: goBackToRoot, presentSheet: presentSheet, presentCover: presentCover, dismiss: dismiss)), embedInNavigationView: true)]
    }

    func push() {
        print("➡️ push stack view")
        routes.push(.stack(.init(push: push, goBack: goBack, goBackToRoot: goBackToRoot, presentSheet: presentSheet, presentCover: presentCover, dismiss: dismiss)))
    }

    func goBack() {
        print("⬅️ go back")
        routes.goBack()
    }

    func goBackToRoot() {
        print("⏪ go back to root")
        routes.goBackToRoot()
    }
    
    func presentSheet() {
        print("⬆️ present sheet")
        routes.presentSheet(.modal(.init(push: push, goBack: goBack, goBackToRoot: goBackToRoot, presentSheet: presentSheet, presentCover: presentCover, dismiss: dismiss)))
    }
    
    func presentCover() {
        print("⬆️ present cover")
        routes.presentCover(.modal(.init(push: push, goBack: goBack, goBackToRoot: goBackToRoot, presentSheet: presentSheet, presentCover: presentCover, dismiss: dismiss)))
    }

    func dismiss() {
        print("⬇️ dismiss")
        routes.dismiss()
    }
}
