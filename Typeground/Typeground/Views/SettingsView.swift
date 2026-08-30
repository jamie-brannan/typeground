//
//  SettingsView.swift
//  Typeground
//
//  Created by Jamie Brannan on 19/10/2025.
//

import SwiftUI

struct SettingsView: View {
  var body: some View {
    VStack {
      List {
        Text("Coming soon")
      }
      .listStyle(.insetGrouped)
      .navigationTitle("Settings")
      .navigationSubtitle("Work in progress")
      .toolbar {
        ToolbarItem.fromUseCase(.info)
      }
      Spacer()
      VStack(alignment: .center, spacing: 8) {
        Text("Open Source always \(UIApplication.versionBuild)")
        Text("@jamie-brannan") // ???: Link to Github?
      }
      .multilineTextAlignment(.center)
      .font(.caption2)
    }
  }
}

#Preview {
  NavigationStack {
    SettingsView()
  }
}
