//
//  ViewController.swift
//  Coin Flip
//
//  Created by Gregory Maldonado on 7/21/18.
//  Copyright © 2018 Gregory Maldonado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        backOfCoin.isHidden = true
    }

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var frontOfCoin: UIImageView!
    @IBOutlet weak var backOfCoin: UIImageView!
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        let number: Int = Int(arc4random_uniform(2))
        
        if number == 0 {
                frontOfCoin.isHidden = false
                backOfCoin.isHidden = true
        }
        else if number == 1 {
                frontOfCoin.isHidden = true
            backOfCoin.isHidden = false
        }
        
    }
    

}

