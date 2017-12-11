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

    
    
    var player: AVAudioPlayer?
    
    func playSound(notePressed: String) {
        guard let url = Bundle.main.url(forResource: notePressed, withExtension: "wav") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.wav.rawValue)
            
            guard let player = player else { return }
            
            player.play()
            
        } catch let error {
            print(error.localizedDescription)
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




