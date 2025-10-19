//
//  ToolbarUseCases.swift
//  Typeground
//
//  Created by Jamie Brannan on 08/10/2025.
//

import SwiftUI

extension ToolbarItem {
  /// These are the cases that Toolbar Items are used
  enum UseCases: String {
    case settings
    case info

    var id: String { self.rawValue }

    var title: String {
      switch self {
      case .settings: return "Settings"
      case .info: return "Info"
      }
    }

    var placement: ToolbarItemPlacement {
      switch self {
      case .settings: return .navigationBarTrailing
      case .info: return .navigationBarTrailing
      }
    }

    var systemImage: String {
      switch self {
      case .settings: return "gear"
      case .info: return "info.circle"
      }
    }

    var destination: any View {
      switch self {
      case .settings:
        SettingsView()
      case .info:
        InfoView()
      }
    }
  }
}

extension ToolbarItem where ID == String, Content == NavigationLink<Label<Text, Image>, AnyView> {
  /// Build a toolbar item from a known use case.
  static func fromUseCase(_ useCase: ToolbarItem.UseCases) -> ToolbarItem {
    return ToolbarItem(id: useCase.id, placement: useCase.placement) {
      NavigationLink(destination: AnyView(useCase.destination)) {
        Label(useCase.title, systemImage: useCase.systemImage)
      }
    }
  }
}
