//
//  ViewController.swift
//  app1
//
//  Created by Daniel Heath on 7/27/22.
//

import UIKit

var n: Int=0

class ViewController: UIViewController {
    @IBOutlet weak var msg1Label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("☘️ ViewDidLoad has run.")
    }
    
    
    @IBAction func msgButtonPressed(_ sender: UIButton) {
        print("🍄 Msg1Button was pressed.")
        msg1Label.text="イメージ: \(n)."
        imageView.image=UIImage(named: "image\(n)")
        n=(n+1)%10
    }
}

