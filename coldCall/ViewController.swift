//
//  ViewController.swift
//  coldCall
//
//  Created by John Colley on 7/10/17.
//  Copyright © 2017 John Colley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var randNumberLabel: UILabel!
    
    let names = [
        "Jay",
        "Bryant",
        "Jimmy",
        "Cody",
        "Ryota",
        "Uyanga",
        "Michael",
        "Sarah",
        "Juanita",
        "Quantifah",
        "Shaniqua",
        "Uniqua",
        "Boniquantika",
        "ID",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = "Ready?"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeNameButtonPressed(_ sender: UIButton) {
        let rand = Int(arc4random_uniform(UInt32(names.count)))
        let randNum = Int(arc4random_uniform(5) + 1)
        name.text = names[rand]
        randNumberLabel.text = String(randNum)
        
        if randNum == 1 || randNum == 2 {
            randNumberLabel.textColor = UIColor.red
        } else if randNum == 3 || randNum == 4 {
            randNumberLabel.textColor = UIColor.orange
        } else if randNum == 5 {
            randNumberLabel.textColor = UIColor.green
        }
    }
}
