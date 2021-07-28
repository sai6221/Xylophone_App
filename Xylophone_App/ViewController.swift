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
        sender.alpha = 0.5
          
        playSound(title: sender.currentTitle!)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
          sender.alpha = 1.0
    }
}
    
    func playSound(title: String) {
            let url = Bundle.main.url(forResource: title, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
                    
        }

    
    
    
}

