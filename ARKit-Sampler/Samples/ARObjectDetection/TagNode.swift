//
//  TagAnchor.swift
//  ARKit-Sampler
//
//

import SceneKit
import Vision

class TagNode: SCNNode {

    var classificationObservation: VNClassificationObservation? {
        didSet {
            addTextNode()
        }
    }
    
    private func addTextNode() {
        guard let text = classificationObservation?.identifier else {return}
        let shorten = text.components(separatedBy: ", ").first!
        let textNode = SCNNode.textNode(text: shorten)
        DispatchQueue.main.async(execute: {
            self.addChildNode(textNode)
        })
        addSphereNode(color: UIColor.green)
    }
    
    private func addSphereNode(color: UIColor) {
        DispatchQueue.main.async(execute: {
            let sphereNode = SCNNode.sphereNode(color: color)
            self.addChildNode(sphereNode)
        })
    }    
}
