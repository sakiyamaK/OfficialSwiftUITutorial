//
//  LandmarkROw.swift
//  Landmarks
//
//  Created by sakiyamaK on 2021/03/17.
//

import SwiftUI

struct LandmarkRow: View {

  var landmark: Landmark

  var body: some View {
    HStack {
      Image(landmark.imageName)
        .resizable()
        .frame(width: 50, height: 50)

      Text(landmark.name)

      Spacer()

      if landmark.isFavorite {
        Image(systemName: "star.fill")
          .foregroundColor(.yellow)
      }
    }
  }
}

struct LandmarkRow_Previews: PreviewProvider {

  static var landmarks = ModelData().landmarks

  static var previews: some View {
    Group {
      ForEach(0..<2) { idx in
        LandmarkRow(landmark: landmarks[idx])
      }
    }
    .previewLayout(.fixed(width: 300, height: 70))
  }
}
