//
//  TechnicalItemLabel.swift
//  DesignSystem
//
//  Created by Jamie Brannan on 29/08/2026.
//

import SwiftUI

public struct TechnicalItem: LabelStyle {

  // MARK: - Properties

  // MARK: Visuals
  let iconStyle: any ShapeStyle
  let iconLabelSpacing: CGFloat
  let textSpacing: CGFloat
  let snippetStyle: any ShapeStyle
  let snippetIndent: CGFloat

  // MARK: Additional content
  let codeSnippet: String?

  init (
    _ codeSnipet: String? = nil,
    iconStyle: any ShapeStyle = .tint,
    iconLabelSpacing: CGFloat = 8,
    textSpacing: CGFloat = 4,
    snippetStyle: any ShapeStyle = .tint,
    snippetIndent: CGFloat = 4
  ) {
    self.codeSnippet = codeSnipet
    self.iconStyle = iconStyle
    self.iconLabelSpacing = iconLabelSpacing
    self.textSpacing = textSpacing
    self.snippetStyle = snippetStyle
    self.snippetIndent = snippetIndent
  }

  public func makeBody(configuration: Configuration) -> some View {
    HStack(alignment: .top, spacing: iconLabelSpacing) {
      configuration.icon
        .foregroundStyle(.tint)
      VStack(alignment: .leading, spacing: textSpacing) {
        configuration.title
        if let codeSnippet {
          Text("`\(codeSnippet)`")
            .font(.caption2)
            .foregroundStyle(.secondary)
            .padding(.leading, snippetIndent)
        }
      }
    }
  }
}

@available(iOS 17)
#Preview("Singular, default initializer", traits: .sizeThatFitsLayout) {
  Label("Technical Item", systemImage: "hammer")
    .labelStyle(TechnicalItem("let thisWork = true"))
}
