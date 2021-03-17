//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by sakiyamaK on 2021/03/17.
//

import SwiftUI

@main
struct LandmarksApp: App {
  @StateObject private var modelData = ModelData()
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(modelData)
    }
  }
}
