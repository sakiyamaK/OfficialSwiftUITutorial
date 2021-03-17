//
//  ContentView.swift
//  Landmarks
//
//  Created by sakiyamaK on 2021/03/17.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    LandmarkList()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .environmentObject(ModelData())
  }
}
