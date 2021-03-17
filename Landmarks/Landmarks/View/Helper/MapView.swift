//
//  MapView.swift
//  Landmarks
//
//  Created by sakiyamaK on 2021/03/17.
//

import SwiftUI
import MapKit

struct MapView: View {
  private static let defCoordinate = CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868)
  private static let defSpan = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)

  @State private var region = MKCoordinateRegion()
  var coordinate: CLLocationCoordinate2D = MapView.defCoordinate

  var body: some View {
    Map(coordinateRegion: $region)
      .onAppear {
        setRegion(coordinate)
      }
  }

  private func setRegion(_ coordinate: CLLocationCoordinate2D) {
    region = MKCoordinateRegion(
      center: coordinate,
      span: MapView.defSpan
    )
  }
}

struct MapView_Previews: PreviewProvider {
  static var previews: some View {
    MapView()
  }
}
