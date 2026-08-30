//
//  ContentView.swift
//  Typeground
//
//  Created by Jamie Brannan on 05/10/2025.
//

import SwiftUI
import DesignSystem
import Combine

struct ContentView: View {

  @ObservedObject private var viewModel: ContentViewModel

  init(viewModel: ContentViewModel) {
    self.viewModel = viewModel
  }

  var body: some View {
    VStack {
      List {
        Section(header: Text("Displaying Text")) {
          ForEach(viewModel.displayingText, id: \.self) { feature in
            if feature.destination(for: feature) is SwiftUICore.EmptyView {
              makeTechLabel(feature.listItem)
                .disabled(true)
            } else {
              NavigationLink(value: feature) {
                makeTechLabel(feature.listItem)
              }
            }
          }
        }
      }
    }
    .navigationDestination(for: ContentViewModel.Feature.self) { feature in
      feature.destination(for: feature)
    }
    .navigationTitle("Welcome Typeheads")
    .toolbar {
      ToolbarItem.fromUseCase(.settings)
    }
    .toolbarRole(.navigationStack)
  }



  // ???: https://developer.apple.com/documentation/swiftui/labelstyleconfiguration maybe instead for get code snippet addition
  // TODO: Next look at buttons
  func makeTechLabel(_ item: ListItem) -> some View {
    Label(
      title: { Text(item.title) },
      icon: { item.image }
    )
      .labelStyle(TechnicalItem(item.codeSnippet))
  }
}


@available(iOS 17)
#Preview("Singular, default initializer", traits: .sizeThatFitsLayout) {
  NavigationStack {
    ContentView(viewModel: ContentViewModel())
  }
}
