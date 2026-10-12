//
//  CodeObjectHeaderView.swift
//  DesignSystem
//
//  Created by Jamie Brannan on 12/10/2026.
//

import SwiftUI

public struct CodeObjectHeaderView: View {
  var objectType: String
  var name: String
  // TODO: Do I want to always have quotes or can I toggle them?
  var tagline: String?

  public init(
    objectType: String,
    name: String,
    tagline: String? = nil
  ) {
    self.objectType = objectType
    self.name = name
    self.tagline = tagline
  }

  /// TODO: Verify the overflow handling and resizing
  public var body: some View {
    VStack(alignment: .leading, spacing: 16) {
      Text(objectType)
        .font(.subheadline)
        .bold()
        .foregroundStyle(.secondary)
      Text("`\(name)`")
        .font(.largeTitle)
        .bold()
      if let tagline {
        Text("\"\(tagline)\"")
          .font(.subheadline)
          .italic()
          .foregroundStyle(.secondary)
      }
    }
  }
}

#Preview {
  CodeObjectHeaderView(
    objectType: "object type",
    name: "Name of object",
    tagline: "What's up doc?"
  )
}
