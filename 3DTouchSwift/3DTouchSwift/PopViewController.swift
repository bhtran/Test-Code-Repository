//
//  PopViewController.swift
//  3DTouchSwift
//
//  Created by Bao Tran on 11/12/16.
//  Copyright © 2016 Bao Tran. All rights reserved.
//

import UIKit

class PopViewController: UIViewController {
    
    //
    lazy var tap: UITapGestureRecognizer = {
        let tap = UITapGestureRecognizer.init(target: self, action: #selector(PopViewController.dismissVC))
        
        return tap
    }()

    override func viewDidLoad() {
        
        super.viewDidLoad()

        self.view.addGestureRecognizer(tap)
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
    }
    

    func dismissVC() {
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }


}
