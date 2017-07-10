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
        name.text = names[rand]
    }
}
