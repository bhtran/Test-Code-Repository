//
//  ViewController.swift
//  MVCExample
//
//  Created by Bao Tran on 9/26/16.
//  Copyright © 2016 Bao Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fullNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        let doge = Dog(prefix:"Mr.", name: "Doge")
        
        fullNameLabel.text = doge.fullName
    }

}

