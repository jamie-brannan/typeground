//
//  Untitled.swift
//  Typeground
//
//  Created by Jamie Brannan on 30/08/2026.
//

import SwiftUI

struct DisplayTextView: View {
  var viewModel: DisplayTextViewModel

  init(viewModel: DisplayTextViewModel) {
    self.viewModel = viewModel
  }

  var body: some View {
    Text(viewModel.title)
      .padding()
      .background(Color.white)
      .cornerRadius(8)
  }
}
