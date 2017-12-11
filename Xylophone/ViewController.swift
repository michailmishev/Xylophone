//
//  ViewController.swift
//  Xylophone
//
//  Created by Michail Mishev on 11/12/17.
//  Copyright © 2017 Michail Mishev. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    
    var audioPlayer: AVAudioPlayer!
    
    func playSound(notePressed: String) {
        
        let soundURL = Bundle.main.url(forResource: notePressed, withExtension: "wav")
        
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: soundURL!)
            audioPlayer.play()
        } catch {
            print(error)
        }
    }

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
//        print(sender.tag)
     
        playSound(notePressed: "note\(sender.tag)")
        
    }
    
    

}




