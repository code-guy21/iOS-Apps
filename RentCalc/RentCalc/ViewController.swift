//
//  ViewController.swift
//  RentCalc
//
//  Created by Alexis San Javier on 4/15/18.
//  Copyright © 2018 The Mexineer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var rent: UITextField!
    @IBOutlet weak var electric: UITextField!
    @IBOutlet weak var internet: UITextField!
    
    var rentValue : Double = 0
    var electricValue : Double = 0
    var internetValue : Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rent.text = "rent"
        electric.text = "electric"
        internet.text = "internet"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func calculateRent(){
        print(rent.text)
        print(electric.text)
        print(internet.text)
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        calculateRent()
    }
    

}

