//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by sakiyamaK on 2021/03/17.
//

import SwiftUI
import MapKit

extension Landmark {
  var locationCoordinate: CLLocationCoordinate2D {
    CLLocationCoordinate2D(
      latitude: self.coordinates.latitude,
      longitude: self.coordinates.longitude
    )
  }
}

struct LandmarkDetail: View {
  @EnvironmentObject var modelData: ModelData
  var landmark: Landmark

  var landmarkIndex: Int {
    modelData.landmarks.firstIndex { $0.id == landmark.id }!
  }

  var body: some View {
    ScrollView {
      MapView(coordinate: landmark.locationCoordinate)
        .ignoresSafeArea(edges: .top)
        .frame(height: 300)

      CircleImage(landmark: landmark)
        .offset(y: -130)
        .padding(.bottom, -130)

      VStack(alignment: .leading) {

        HStack {
          Text(landmark.name)
            .font(.title)
            .foregroundColor(.primary)

          FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
        }

        HStack {
          Text(landmark.park)

          Spacer()

          Text(landmark.state)
        }
        .font(.subheadline)
        .foregroundColor(.secondary)

        Divider()

        Text("Abount \(landmark.name)")
          .font(.title2)
        Text(landmark.description)
      }
      .padding()
    }
    .navigationTitle(landmark.name)
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct LandmarkDetail_Previews: PreviewProvider {

  static let modelData = ModelData()

  static var previews: some View {
    LandmarkDetail(landmark: modelData.landmarks.first!)
      .environmentObject(modelData)
  }
}
