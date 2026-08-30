//
//  UIApplication+Extension.swift
//  Typeground
//
//  Created by Jamie Brannan on 30/08/2026.
//

import UIKit

extension UIApplication {
    private enum InfoKeys {
        static let shortVersion = "CFBundleShortVersionString"
        static let build = kCFBundleVersionKey as String
    }

    static var appVersion: String {
        Bundle.main.object(forInfoDictionaryKey: InfoKeys.shortVersion) as? String ?? "0"
    }

    static var appBuild: String {
        Bundle.main.object(forInfoDictionaryKey: InfoKeys.build) as? String ?? "0"
    }

    static var versionBuild: String {
        appVersion == appBuild ? "v\(appVersion)" : "v\(appVersion)(\(appBuild))"
    }
}
