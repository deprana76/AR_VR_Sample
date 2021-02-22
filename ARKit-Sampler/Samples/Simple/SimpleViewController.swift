//
//  SimpleViewController.swift
//  ARKit-Sampler
//
//

import UIKit
import ARKit

class SimpleViewController: UIViewController {

    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()        
        sceneView.scene = SCNScene(named: "ship.scn", inDirectory: "models.scnassets/ship")!
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        sceneView.session.run(ARWorldTrackingConfiguration())
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        sceneView.session.pause()
    }
}
