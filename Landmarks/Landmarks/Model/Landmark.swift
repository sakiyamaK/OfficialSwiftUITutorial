//
//  Landmark.swift
//  Landmarks
//
//  Created by sakiyamaK on 2021/03/17.
//

import Foundation

struct Landmark: Hashable, Codable {
  var id: Int
  var name: String
  var park: String
  var state: String
  var description: String
  var isFavorite: Bool
  
  var imageName: String
  
  var coordinates: Coordinates
  
  struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
  }
}
