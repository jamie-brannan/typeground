//
//  ContentViewModel.swift
//  Typeground
//
//  Created by Jamie Brannan on 30/08/2026.
//

import SwiftUI
import Combine

class ContentViewModel: ObservableObject {
  enum Feature: Hashable, CaseIterable {
    case displayText
    case labelWithIcon
    case customLabelStyle

    var listItem: ListItem {
      switch self {
      case .displayText:
        ListItem("Static text box", "struct Text", Image(systemName: "character.textbox"))
      case .labelWithIcon:
        ListItem("Text box with an image or icon", "struct Label", Image(systemName: "text.below.photo"))
      case .customLabelStyle:
        ListItem("Make a custom label style", "func labelStyle<S>(S) -> some View", Image(systemName: "paintbrush"))
      }
    }

    @ViewBuilder
    func destination(for feature: Feature) -> some View {
      switch feature {
      case .displayText:
        DisplayTextView(viewModel: DisplayTextViewModel())
      case .labelWithIcon, .customLabelStyle:
        EmptyView()
      }
    }
  }

  // MARK: Content
  let displayingText: [Feature] = Feature.allCases
}
