//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Alexis San Javier on 4/15/18.
//  Copyright © 2018 The Mexineer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var eightBall: UIImageView!

    let imageList = ["ball1","ball2","ball3","ball4","ball5"]
    var randomIndex : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeBall()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func changeBall(){
        randomIndex = Int(arc4random_uniform(5))
        eightBall.image = UIImage(named: imageList[randomIndex])
    }
    
    @IBAction func changeEightBall(_ sender: UIButton) {
        changeBall()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeBall()
    }
    
}

