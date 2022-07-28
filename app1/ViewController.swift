//
//  ViewController.swift
//  app1
//
//  Created by Daniel Heath on 7/27/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var msg1Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("☘️ ViewDidLoad has run.")
    }


    @IBAction func msgButtonPressed(_ sender: UIButton) {
        print("🍄 Msg1Button was pressed.")
        msg1Label.text="Is done."
    }
}

