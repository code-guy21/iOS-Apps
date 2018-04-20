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
    @IBOutlet weak var finalAmount: UILabel!
    
    var rentAmount : Double?
    var electricAmount : Double?
    var internetAmount : Double?
    var total : Double?
    
    var rentValue : Double?
    var electricValue : Double?
    var internetValue : Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func calculateRent(){
        rentAmount = Double(rent.text!)
        electricAmount = Double(electric.text!)
        internetAmount = Double(internet.text!)
        
        total = (rentAmount!/3) + (electricAmount!/3) + (internetAmount!/3)
        total = total! - electricAmount!
        
        finalAmount.text = String(total!)
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        calculateRent()
    }
    

}

