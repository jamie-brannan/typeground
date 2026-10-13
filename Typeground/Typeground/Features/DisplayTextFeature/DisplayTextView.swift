//
//  Untitled.swift
//  Typeground
//
//  Created by Jamie Brannan on 30/08/2026.
//

import DesignSystem
import SwiftUI

// TODO: Factor out to be a template for intersections code objects
struct DisplayTextView: View {
  var viewModel: DisplayTextViewModel

  init(viewModel: DisplayTextViewModel) {
    self.viewModel = viewModel
  }

  var body: some View {
    VStack(alignment: .leading, spacing: 24) {
      CodeObjectHeaderView(
        objectType: "Structure",
        name: "Text",
        tagline: "A view that displays one or more lines of read-only text."
      )
      // TODO: Link directly to the developer documentation at apple for this - maybe via a toolbar button on the page itself?

      // TODO: Make an "FYI" for designers with google search keywords to run in their search engines by default on their device
      Text("⚠️ **Editorial needed** : Background knowledge of how string markup works in programming globally for designers")
        .padding(16)
        .background(.orange)
        .cornerRadius(8)

      List {
        // TODO: see if I can have a header that has a header + body text?
        Section(header: Text("Creating a text view")) {
          FunctionSignatureView("init(_:)", description: "Creates a text view that displays styled attributed content.")
          // ???: Truncate and/or make trailing for display purposes
          Text("`init(LocalizedStringKey, tableName: String?, bundle: Bundle?, comment: StaticString?)`")
        }
      }.listStyle(.plain)

      Spacer()
    }
    .padding(16)
    .toolbar {
      if let officialDocumentation = viewModel.officialDocumentation {
        ToolbarItem.buttonToGoToOfficialSite(for: officialDocumentation)
      }
    }
  }
}

#Preview {
  DisplayTextView(viewModel: DisplayTextViewModel())
}
