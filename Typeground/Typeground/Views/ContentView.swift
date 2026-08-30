//
//  ContentView.swift
//  Typeground
//
//  Created by Jamie Brannan on 05/10/2025.
//

import SwiftUI
import DesignSystem

struct ContentView: View {

  // MARK: Content
  let displayingText: [ListItem] = [
    .init(
      "Static text box",
      "struct Text",
      Image.init(systemName: "character.textbox")
    ),
    .init(
      "Text box with an image or icon",
      "struct Label",
      Image.init(systemName: "text.below.photo")
    ),
    .init(
      "Make a custom label style",
      "func labelStyle<S>(S) -> some View",
      Image.init(systemName: "paintbrush")
    ),
  ]

  var body: some View {
    VStack {
      List {
        Section(header: Text("Displaying Text")) {
          ForEach(displayingText) { text in
            makeTechLabeL(text)
          }
        }
        Section(header: Text("Section 2")) {
          Text("Row 1")
          Text("Row 2")
        }
      }
    }
    .navigationTitle("Welcome Typeheads")
    .toolbar {
      ToolbarItem.fromUseCase(.settings)
    }
    .toolbarRole(.navigationStack)
  }

  // ???: https://developer.apple.com/documentation/swiftui/labelstyleconfiguration maybe instead for get code snippet addition
  // TODO: Next look at buttons
  func makeTechLabeL(_ item: ListItem) -> some View {
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
    ContentView()
  }
}
