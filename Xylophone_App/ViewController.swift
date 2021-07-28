//
//  ViewController.swift
//  Xylophone_App
//
//  Created by Sai Reddy on 28/07/21.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    var player: AVAudioPlayer!



    @IBAction func buttonPresse(_ sender: UIButton) {
        playSound(title: sender.currentTitle!)
    }
    
    func playSound(title: String) {
            let url = Bundle.main.url(forResource: title, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
                    
        }

    
    
    
}

