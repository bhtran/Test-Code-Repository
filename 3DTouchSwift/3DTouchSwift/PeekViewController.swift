//
//  PeekViewController.swift
//  3DTouchSwift
//
//  Created by Bao Tran on 11/12/16.
//  Copyright © 2016 Bao Tran. All rights reserved.
//

import UIKit

class PeekViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
    }
    
    func dismissVC() {
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    func is3DTouchAvailable() {
        
        if self.traitCollection.forceTouchCapability != UIForceTouchCapability.Available {
            let tap = UITapGestureRecognizer.init(target: self, action: #selector(PeekViewController.dismissVC))
            self.view.addGestureRecognizer(tap)
        }
    }

}
