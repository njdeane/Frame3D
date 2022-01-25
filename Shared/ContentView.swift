//
//  ContentView.swift
//  Shared
//
//  Created by Nic Deane on 24/1/2022.
//

import SwiftUI
import SceneKit

struct ContentView: View {
  
  static func makeScene() -> SCNScene? {
    let scene = SCNScene(named: "FrameScene.scn")
    
    applyTextures(to: scene)

    return scene
  }
  
  static func applyTextures(to scene: SCNScene?) {
    // 1
    for frame in Frame.allCases {
      // 2
      let identifier = frame.rawValue
      // 3
      let node = scene?.rootNode
        .childNode(withName: identifier, recursively: false)

      // 4
      let texture = UIImage(named: identifier)

      // 5
      
      node?.geometry?.firstMaterial?.diffuse.contents = texture
      let image = UIImage(named: "room")
      scene?.background.contents = image
    }
  }

  
  var scene = makeScene()
  
  var body: some View {
    VStack {
      Text("Frames")
        .padding(.bottom, 80)
      
      SceneView(
        scene: scene,
        pointOfView: setUpCamera(),
        options: [.allowsCameraControl]
      )
      
      Text("")
        .padding(.top, 80)
    }
  }
  
  func setUpCamera() -> SCNNode? {
    let cameraNode = scene?.rootNode
      .childNode(withName: "camera", recursively: false)
    return cameraNode
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
