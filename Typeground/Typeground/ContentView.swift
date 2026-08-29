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

  var body: some View {
    VStack {
      List {
        Section(header: Text("Displaying Text")) {
          Label("Static text box", systemImage: "character.textbox")
            .labelStyle(TechnicalItem("struct Text"))
          Label("Text box with an image or icon", systemImage: "text.below.photo")
            .labelStyle(TechnicalItem("struct Label"))
          Label("Make a custom label style", systemImage: "paintbrush")
            .labelStyle(TechnicalItem("func labelStyle<S>(S) -> some View"))
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

  func makeTechLabeL(_ item: TechnicalItem) -> some View {
    Label
  }
}


@available(iOS 17)
#Preview("Singular, default initializer", traits: .sizeThatFitsLayout) {
  NavigationStack {
    ContentView()
  }
}
