//
//  FunctionSignatureView.swift
//  DesignSystem
//
//  Created by Jamie Brannan on 12/10/2026.
//

import SwiftUI

public struct FunctionSignatureView: View {
  let completeSignature: String
  let description: String?

  // TODO: Make an init that's piece by piece
  public init(
    _ completeSignature: String,
    description: String? = nil
  ) {
    self.completeSignature = completeSignature
    self.description = description
  }

  public var body: some View {
    VStack(alignment: .leading, spacing: 8) {
      Text("`\(completeSignature)`")
      if let description {
        Text(description)
          .font(.caption)
          .foregroundStyle(.secondary)
          .padding([.leading], 4)
      }
    }
  }
}

#Preview {
  FunctionSignatureView("Whole enchelada", description: "whazzup")
}
