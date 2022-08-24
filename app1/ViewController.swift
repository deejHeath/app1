//
//  ViewController.swift
//  app1
//
//  Created by Daniel Heath on 7/27/22.
//

import UIKit
import AVFoundation

var imageNumber=0

class ViewController: UIViewController {
    @IBOutlet weak var msg1Label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var audioPlayer: AVAudioPlayer!
    let messageString = ["0","1","2"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("☘️ ViewDidLoad has run.")
    }
    
    
    @IBAction func msgButtonPressed(_ sender: UIButton) {
        print("🍄 Msg1Button was pressed, imageNumber="+String(imageNumber%10)+".")
        msg1Label.text="イメージ: \(imageNumber%10). "+messageString[imageNumber%messageString.count]
        imageView.image=UIImage(named: "image\(imageNumber%10)")
        let soundName="sound\(imageNumber%10)"
        imageNumber=(imageNumber+1)
        
        if let sound = NSDataAsset(name: soundName){
            do {
                try audioPlayer=AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("Couldn't initialize audio.")
            }
            
        } else {
            print("Couldn't find sound0.")
        }
    }
}

