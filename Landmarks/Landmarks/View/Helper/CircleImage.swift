//
//  CircleImage.swift
//  Landmarks
//
//  Created by sakiyamaK on 2021/03/17.
//

import SwiftUI

struct CircleImage: View {
  var landmark: Landmark

  var body: some View {
    Image(landmark.imageName)
      .resizable()
      .frame(width: 200, height: 200, alignment: .center)
      .clipShape(Circle())
      .overlay(Circle().stroke(Color.white, lineWidth: 4))
      .shadow(radius: 7)
  }
}

struct CircleImage_Previews: PreviewProvider {

  static var landmarks = ModelData().landmarks

  static var previews: some View {
    CircleImage(landmark: landmarks.first!)
  }
}
