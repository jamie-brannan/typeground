//
//  ContentView.swift
//  Typeground
//
//  Created by Jamie Brannan on 05/10/2025.
//

import SwiftUI
import DesignSystem

struct ContentView: View {
  
  var body: some View {
    VStack {
      Text("Typeground")
      TextingBridge()
    }
    .navigationTitle("Welcome Typeheads")
    .toolbar{
      ToolbarItem.fromUseCase(.settings)
    }
    .toolbarRole(.navigationStack)
  }
}

#Preview {
  NavigationStack {
    ContentView()
  }
}
