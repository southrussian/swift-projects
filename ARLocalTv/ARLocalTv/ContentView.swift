//
//  ContentView.swift
//  ARLocalTv
//
//  Created by Danil Peregorodiev on 04.10.2021.
//

import SwiftUI
import RealityKit
import AVFoundation

struct ContentView : View {
    var body: some View {
        return ARViewContainer().edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)

        spawnTV(in: arView)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
    func spawnTV(in arView: ARView) {
        // create tv housing
        let dimensions: SIMD3<Float> = [1.23, 0.046, 0.7]
        
        let housingMesh = MeshResource.generateBox(size: dimensions)
        let housingMat = SimpleMaterial(color: .black, roughness: 0.3, isMetallic: false)
        let housingEntity = ModelEntity(mesh: housingMesh, materials: [housingMat])
        
        // create tv screen
        
        let screenMesh = MeshResource.generatePlane(width: dimensions.x, depth: dimensions.z)
        let screenMat = SimpleMaterial(color: .white, roughness: 0.2, isMetallic: false)
        let screenEntity = ModelEntity(mesh: screenMesh, materials: [screenMat])
        screenEntity.name = "tvScreen"
        
        // screen to housing
        housingEntity.addChild(screenEntity)
        screenEntity.setPosition([0, dimensions.y/2 + 0.001, 0], relativeTo: housingEntity)
        
        // tv on wall
        
        let anchor = AnchorEntity(plane: .vertical)
        anchor.addChild(housingEntity)
        arView.scene.addAnchor(anchor)
        
        arView.enableTapGesture()
        housingEntity.generateCollisionShapes(recursive: true)
    }
    
}

extension ARView {
    func enableTapGesture() {
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTap(recognizer: )))
        self.addGestureRecognizer(tapGestureRecognizer)
    }
    @objc func handleTap(recognizer: UITapGestureRecognizer) {
        let taplocation = recognizer.location(in: self)
        
        if let entity = self.entity(at: taplocation) as? ModelEntity, entity.name == "tvScreen" {
            loadVideoMaterial(for: entity)
        }
    }
    
    func loadVideoMaterial(for entity: ModelEntity) {
        let asset = AVAsset(url: Bundle.main.url(forResource: "PianoCat", withExtension: "mp4")!)
        let playerItem = AVPlayerItem(asset: asset)
        let player = AVPlayer()
        entity.model?.materials = [VideoMaterial(avPlayer: player)]
        
        player.replaceCurrentItem(with: playerItem)
        player.play()
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
