//
//  ViewController.swift
//  CoinFlip
//
//  Created by Ivan on 07.07.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var coinImage: UIImageView!
    @IBOutlet weak var coinLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clearPressed(_ sender: UIButton) {
        coinImage.image = nil
        coinLabel.text = ""
    }
    
    @IBAction func flipPressed(_ sender: UIButton) {
        let randomNumberImage = Int.random(in: 0...1)
        print(randomNumberImage)
        switch randomNumberImage {
        case 0:
            coinImage.image = UIImage(named: "CoinDollar")
            coinLabel.text = "Tails"
        default:
            coinImage.image = UIImage(named: "CoinStar")
            coinLabel.text = "Heads"
        }
    }
    
}

