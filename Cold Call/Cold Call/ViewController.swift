//
//  ViewController.swift
//  Cold Call
//
//  Created by Kevin Pham on 11/1/17.
//  Copyright © 2017 Kevin Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!

    
    let nameBank = [
        ("Kobe"), ("Nash"), ("Jordan"), ("Durant"), ("Curry"), ("Spiderman"), ("Ethan"),("Emerson")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    @IBAction func callButtonPressed(_ sender: Any){
        let coldCall = Int(arc4random_uniform(UInt32(nameBank.count)))
        nameLabel.text = nameBank[coldCall]
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

