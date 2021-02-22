//
//  ARFaceNode.swift
//  ARKit-Sampler
//

//

import ARKit

class ARFaceNode: SCNNode {

    init(device: MTLDevice, color: UIColor = .white) {
        
        let program = SCNProgram()
        program.vertexFunctionName = "scnVertexShader"
        program.fragmentFunctionName = "scnFragmentShader"

        let faceGeometry = ARSCNFaceGeometry(device: device)
        if let material = faceGeometry?.firstMaterial {
            material.program = program
        }
        super.init()
        self.geometry = faceGeometry
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func update(with faceAnchor: ARFaceAnchor) {
        guard let faceGeometry = geometry as? ARSCNFaceGeometry else {return}
        faceGeometry.update(from: faceAnchor.geometry)
    }
}

extension SCNNode {
    
    func findFaceNode() -> ARFaceNode? {
        for childNode in childNodes {
            guard let faceNode = childNode as? ARFaceNode else { continue }
            return faceNode
        }
        return nil
    }
}
