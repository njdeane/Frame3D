//
//  Frame.swift
//  Frame3D
//
//  Created by Nic Deane on 24/1/2022.
//

import Foundation

enum Frame: String, CaseIterable {
  case woodHug
  case art2
  case room
  
  var name: String {
    rawValue.prefix(1).capitalized + rawValue.dropFirst()
  }
}
