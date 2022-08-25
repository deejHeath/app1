//
//  ViewController.swift
//  app1
//
//  Created by Daniel Heath on 7/27/22.
//

import UIKit
import AVFoundation

var imageNumber = -1
var soundNumber = -1
var messageNumber = -1
let numberOfImages = 10
let NumberOfSounds = 10
let messageString = ["Hmpf.","Whatever.","Eh?","Bah."]

class ViewController: UIViewController {
    @IBOutlet weak var msg1Label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var playSoundSwitch: UISwitch!
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("☘️ ViewDidLoad has run.")
    }
    
    func playSound(_ soundNumber: Int) {
        let soundName="sound\(soundNumber)"
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
    
    func generateRandom(oldNumber: Int, maxNumber: Int) -> Int {
        var newNumber: Int = -1
        repeat {
            newNumber=Int.random(in: 0...maxNumber-1)
        } while newNumber == oldNumber
        
        return newNumber
    }
    
    @IBAction func msgButtonPressed(_ sender: UIButton) {
        print("🍄 Msg1Button was pressed.")
        messageNumber=generateRandom(oldNumber: messageNumber, maxNumber: messageString.count)
        imageNumber=generateRandom(oldNumber: imageNumber, maxNumber: numberOfImages)
        msg1Label.text=messageString[messageNumber]
        imageView.image=UIImage(named: "image\(imageNumber)")
        if playSoundSwitch.isOn {
            soundNumber=generateRandom(oldNumber: soundNumber, maxNumber: NumberOfSounds)
            playSound(soundNumber)
        }
    }
    @IBAction func soundSwitch(_ sender: UISwitch) {
        if !sender.isOn {
            audioPlayer.stop()
        }
    }
    
}

