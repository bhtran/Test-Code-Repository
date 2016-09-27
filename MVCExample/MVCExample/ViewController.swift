//
//  ViewController.swift
//  MVCExample
//
//  Created by Bao Tran on 9/26/16.
//  Copyright © 2016 Bao Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fullNameLabel: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        let person = Person(firstName: "Forrest", lastName: "Gump")
        
        fullNameLabel.text = person.fullName
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

