//
//  StackView.swift
//  FlowStacksDoubleDismiss
//
//  Created by Ryan Donnelly on 11/2/23.
//

import SwiftUI

struct StackView: View {
    var viewModel: ScreenViewModel
    
    var count: Int
    
    var body: some View {
        VStack {
            Text("Stack Screen #\(count)!")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Button(action: viewModel.push) {
                Text("Push")
            }
            Button(action: viewModel.goBack) {
                Text("Go Back")
            }
            Button(action: viewModel.goBackToRoot) {
                Text("Go Back To Root")
            }
            Button(action: viewModel.presentSheet) {
                Text("Present Sheet")
            }
            Button(action: viewModel.presentCover) {
                Text("Present Cover")
            }
        }
        .navigationTitle("Screen #\(count)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let viewModel = ScreenViewModel(push: { print("push") }, goBack: { print("goBack") }, goBackToRoot: { print("goBackToRoot") }, presentSheet: { print("presentSheet") }, presentCover: { print("presentCover") }, dismiss: { print("dismiss") })
    return StackView(viewModel: viewModel, count: 5)
}
