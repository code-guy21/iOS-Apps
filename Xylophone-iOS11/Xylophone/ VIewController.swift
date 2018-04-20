//
//  ViewController.swift
//  Xylophone
//
//  Created by Alexis San Javier on 4/18/18.
//  Copyright © 2018 The Mexineer. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer : AVAudioPlayer!
    var url : URL?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func playNote(_ note : Int){
        
        url = Bundle.main.url(forResource: "note\(note)", withExtension: "wav")!
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
        } catch {
            print(error)
        }
        
        audioPlayer.play()
    }


    @IBAction func notePressed(_ sender: UIButton) {
        
        playNote(sender.tag)
    }
    
  
}

