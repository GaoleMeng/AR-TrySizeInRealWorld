//
//  ViewController.swift
//  ArApp_byArkit
//
//  Created by 孟高乐 on 6/24/17.
//  Copyright © 2017 GaoleMeng. All rights reserved.
//

import UIKit
import ARKit
import SceneKit
class ViewController: UIViewController {
    @IBOutlet weak var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let configuration = ARWorldTrackingSessionConfiguration();
        
        configuration.planeDetection = .horizontal;
        sceneView.session.run(configuration)
    }

    @IBAction func addBox(_ sender: Any) {
        var cubeNode = SCNNode(geometry: SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0))
        cubeNode.position = SCNVector3(0, 0, -0.2);
        sceneView.scene.rootNode.addChildNode(cubeNode);
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

