//
//  GoToOfficialSiteToolbarItem.swift
//  Typeground
//
//  Created by Jamie Brannan on 13/10/2026.
//

import SwiftUI

extension ToolbarItem where ID == String, Content == Link<Label<Text, Image>> {

  // TODO: Check accessibility
  static func buttonToGoToOfficialSite(for url: URL) -> ToolbarItem {
    ToolbarItem(id: url.absoluteString, placement: .automatic) {
      Link(destination: url) {
        Label("Apple Developer Documentation", systemImage: "book")
      }
    }
  }
}
