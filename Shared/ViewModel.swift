//
//  ViewModel.swift
//  Frame3D
//
//  Created by Nic Deane on 24/1/2022.
//

import Foundation

class ViewModel: NSObject, ObservableObject {
  
  @Published var selectedFrame: Frame?
  
  var title: String {
    selectedFrame?.name ?? ""
  }
  
  
}
