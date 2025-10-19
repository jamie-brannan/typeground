//
//  ContentView.swift
//  Typeground
//
//  Created by Jamie Brannan on 05/10/2025.
//

import SwiftUI

struct ContentView: View {
  
  var body: some View {
    Text("Typeground")
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
