//
//  ViewController.swift
//  Xylophone
//
//  Created by Alexis San Javier on 4/18/18.
//  Copyright © 2018 The Mexineer. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var player : AVAudioPlayer?
    var url : URL?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func notePressed(_ sender: UIButton) {
        
        if sender.tag == 1{
            url = Bundle.main.url(forResource: "note1", withExtension: "wav")!
        }
        
        if sender.tag == 2{
            url = Bundle.main.url(forResource: "note2", withExtension: "wav")!
        }
        if sender.tag == 3{
            url = Bundle.main.url(forResource: "note3", withExtension: "wav")!
        }
        if sender.tag == 4{
            url = Bundle.main.url(forResource: "note4", withExtension: "wav")!
        }
        if sender.tag == 5{
            url = Bundle.main.url(forResource: "note5", withExtension: "wav")!
        }
        if sender.tag == 6{
            url = Bundle.main.url(forResource: "note6", withExtension: "wav")!
        }
        if sender.tag == 7{
            url = Bundle.main.url(forResource: "note7", withExtension: "wav")!
        }
        
        do {
            player = try AVAudioPlayer(contentsOf: url!)
            guard let player = player else { return }
            player.prepareToPlay()
            player.play()
        } catch {
            print("error loading file")
            // couldn't load file :(
        }
    }
    
  
}

