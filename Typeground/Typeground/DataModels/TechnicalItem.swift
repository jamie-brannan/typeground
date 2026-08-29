//
//  TechnicalItem.swift
//  Typeground
//
//  Created by Jamie Brannan on 29/08/2026.
//

import SwiftUI

struct ListItem: Identifiable {
  let id = UUID()
  let title: String
  let codeSnippet: String?
  let image: Image?

  init(
    _ title: String,
    _ codeSnippet: String? = nil,
    _ image: Image? = nil
  ) {
    self.title = title
    self.codeSnippet = codeSnippet
    self.image = image
  }
}

