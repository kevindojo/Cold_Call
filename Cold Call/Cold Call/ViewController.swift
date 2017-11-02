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

    var nameIndex = 0;
    
    let nameBank = [
        ("Ready?"),("Kobe"), ("Nash"), ("Jordan"), ("Durant"), ("Curry"), ("Spiderman")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateUI()
    }
    
    func updateUI(){
        nameLabel.text = nameBank[nameIndex]
    }



    @IBAction func callButtonPressed(_ sender: Any){
        if nameIndex != nameBank.count - 1 {
            nameIndex += 1
        }else{
            nameIndex = 0
        }
        updateUI()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

