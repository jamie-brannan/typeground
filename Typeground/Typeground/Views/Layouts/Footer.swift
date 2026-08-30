//
//  Footer.swift
//  Typeground
//
//  Created by Jamie Brannan on 30/08/2026.
//

import SwiftUI

struct CreditsFooter: View {
  var body: some View {
    VStack(alignment: .center, spacing: 8) {
      Text("Open Source always \(UIApplication.versionBuild)")
      Text(String.myGithubHandle) // ???: Link to Github?
    }
    .multilineTextAlignment(.center)
    .font(.caption2)
  }
}
