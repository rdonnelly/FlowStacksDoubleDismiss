//
//  ModalView.swift
//  FlowStacksDoubleDismiss
//
//  Created by Ryan Donnelly on 11/2/23.
//

import SwiftUI

struct ModalView: View {
    var viewModel: ScreenViewModel
    
    var count: Int
    
    var body: some View {
        VStack {
            Text("Modal Screen #\(count)!")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Button(action: viewModel.presentSheet) {
                Text("Present Sheet")
            }
            Button(action: viewModel.presentCover) {
                Text("Present Cover")
            }
            Button(action: viewModel.dismiss) {
                Text("Dismiss")
            }
        }
    }
}

#Preview {
    let viewModel = ScreenViewModel(push: { print("push") }, goBack: { print("goBack") }, goBackToRoot: { print("goBackToRoot") }, presentSheet: { print("presentSheet") }, presentCover: { print("presentCover") }, dismiss: { print("dismiss") })
    return ModalView(viewModel: viewModel, count: 5)
}
