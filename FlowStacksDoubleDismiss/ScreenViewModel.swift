//
//  ViewModel.swift
//  FlowStacksDoubleDismiss
//
//  Created by Ryan Donnelly on 11/2/23.
//

import Foundation

class ScreenViewModel {
    var push: () -> Void
    var goBack: () -> Void
    var goBackToRoot: () -> Void
    var presentSheet: () -> Void
    var presentCover: () -> Void
    var dismiss: () -> Void

    init(push: @escaping () -> Void, goBack: @escaping () -> Void, goBackToRoot: @escaping () -> Void, presentSheet: @escaping () -> Void, presentCover: @escaping () -> Void, dismiss: @escaping () -> Void) {
        self.push = push
        self.goBack = goBack
        self.goBackToRoot = goBackToRoot
        self.presentSheet = presentSheet
        self.presentCover = presentCover
        self.dismiss = dismiss
    }
}
