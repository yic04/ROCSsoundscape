//
//  ViewController.swift
//  Soundscape
//
//  Created by Yi Chen on 4/24/24.
//  Copyright © 2024 Soundscape community. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    @IBOutlet var Distance: UILabel!
    override func viewDidLoad() {
            super.viewDidLoad()
        Distance.text = String(DestinationManager.EnterImmediateVicinityDistance)
        }
    @IBAction func incre(_ sender: UIButton) {
        DestinationManager.updateEnterImmediateVicinityDistance(change: 5.0)
        Distance.text = String(DestinationManager.EnterImmediateVicinityDistance)
    }
    @IBAction func decre(_ sender: UIButton) {
        DestinationManager.updateEnterImmediateVicinityDistance(change: -5.0)
        Distance.text = String(DestinationManager.EnterImmediateVicinityDistance)
    }
}
