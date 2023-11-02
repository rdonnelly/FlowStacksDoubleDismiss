//
//  AppCoordinator.swift
//  FlowStacksDoubleDismiss
//
//  Created by Ryan Donnelly on 11/2/23.
//

import SwiftUI
import FlowStacks

struct AppCoordinator: View {
    @ObservedObject var coordinatorViewModel: AppCoordinatorViewModel

    var body: some View {
        Router($coordinatorViewModel.routes) { screen, index in
            switch screen {
                case let .stack(viewModel):
                    StackView(viewModel: viewModel, count: index)
                case let .modal(viewModel):
                    ModalView(viewModel: viewModel, count: index)
            }
        }
    }
}

#Preview {
    let coordinatorViewModel = AppCoordinatorViewModel()
    return AppCoordinator(coordinatorViewModel: coordinatorViewModel)
}
