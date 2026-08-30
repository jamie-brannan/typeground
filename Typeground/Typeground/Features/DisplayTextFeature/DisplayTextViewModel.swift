//
//  DisplayTextViewModel.swift
//  Typeground
//
//  Created by Jamie Brannan on 30/08/2026.
//

import SwiftUI
import Combine

// ???: State object or Observable object? What if I want to save data to iCloud or just locally? Or different states of this from projects
class DisplayTextViewModel: ObservableObject {
  var title: String = "Display Text"
}
