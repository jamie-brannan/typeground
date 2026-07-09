//
//  SettingsView.swift
//  Typeground
//
//  Created by Jamie Brannan on 19/10/2025.
//

import SwiftUI

struct SettingsView: View {
  var body: some View {
    List {
      Text("Coming soon")
    }
    .listStyle(.insetGrouped)
    .navigationTitle("Settings")
    .navigationSubtitle("Work in progress")
    .toolbar {
      ToolbarItem.fromUseCase(.info)
    }
  }
}

#Preview {
  NavigationStack {
    SettingsView()
  }
}
