//
//  ViewController.swift
//  Vinyl Rhapsody AR
//
//  Created by Dane on 21/9/2022.
//

import UIKit
import RealityKit
import ARKit

class ViewController: UIViewController {
    
    @IBOutlet var ARView: ARView!
    @IBOutlet weak var NotificationBar: UIVisualEffectView!

    let coachingOverlay = ARCoachingOverlayView()
    
    let sceneLoadFirst = try! AlbumCollection.loadFirstRegular()
    
    var radius = 22
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCoachingOverlay()

        ARView.scene.anchors.append(sceneLoadFirst)
    }
}
