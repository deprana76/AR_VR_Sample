//
//  SampleDataSource.swift
//  ARKit-Sampler
//

//

import UIKit

struct Sample {
    let title: String
    let detail: String
    let classPrefix: String
    
    func controller() -> UIViewController {
        let storyboard = UIStoryboard(name: classPrefix, bundle: nil)
        guard let controller = storyboard.instantiateInitialViewController() else {fatalError()}
        controller.title = title
        return controller
    }
}

struct SampleDataSource {
    let samples = [
        Sample(
            title: "Simple AR",
            detail: "A simple AR",
            classPrefix: "Simple"
        ),
        Sample(
            title: "Plane Detection",
            detail: "A sample to show how simply ARKit can detect planes",
            classPrefix: "PlaneDetection"
        ),
        Sample(
            title: "Virtual Object",
            detail: "A sample to show how to add a virtual object to a detected plane.",
            classPrefix: "VirtualObject"
        ),
        Sample(
            title: "AR Interaction",
            detail: "Interact with virtual objects or detected plane anchors.",
            classPrefix: "ARInteraction"
        ),
        Sample(
            title: "AR Measure",
            detail: "Measure a length between 2 points in the real space.",
            classPrefix: "ARMeasure"
        ),
        Sample(
            title: "AR Drawing",
            detail: "Drawing in the real space.",
            classPrefix: "ARDrawing"
        ),
        ]
}
