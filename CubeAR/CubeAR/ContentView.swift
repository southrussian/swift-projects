//
//  ContentView.swift
//  CubeAR
//
//  Created by Danil Peregorodiev on 10.10.2021.
//

import SwiftUI
import RealityKit
import ARKit

extension ARView {
    func enableObjectRemoval() {
        let longPressGetureRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(handleLongPress(recognizer:)))
        self.addGestureRecognizer(longPressGetureRecognizer)
    }
    @objc func handleLongPress(recognizer: UILongPressGestureRecognizer) {
        let location = recognizer.location(in: self)
        if let entity = self.entity(at: location) {
            if let anchorEntity = entity.anchor, anchorEntity.name == "cubeAnchor" {
                anchorEntity.removeFromParent()
                print("Removed anchor with name " + anchorEntity.name)
            }
        }
    }
}

struct ContentView : View {
    var body: some View {
        return ARViewContainer().edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        let mesh = MeshResource.generateSphere(radius: 0.3)
        let material = SimpleMaterial(color: .white, roughness: 0.2, isMetallic: false)
        let modelEntity = ModelEntity(mesh: mesh, materials: [material])
        let anchorEntity = AnchorEntity(plane: .horizontal)
        
        anchorEntity.name = "cubeAnchor"
        anchorEntity.addChild(modelEntity)
        arView.scene.addAnchor(anchorEntity)
        
        modelEntity.generateCollisionShapes(recursive: true)
        arView.installGestures([.translation, .rotation, .scale], for: modelEntity)
        
        arView.enableObjectRemoval()
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
