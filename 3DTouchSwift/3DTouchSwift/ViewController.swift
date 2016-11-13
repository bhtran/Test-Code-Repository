//
//  ViewController.swift
//  3DTouchSwift
//
//  Created by Bao Tran on 11/12/16.
//  Copyright © 2016 Bao Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIViewControllerPreviewingDelegate {

    lazy var longPress: UILongPressGestureRecognizer = {
        let press = UILongPressGestureRecognizer.init(target: self, action: #selector(ViewController.longPressPeek))
        return press
    }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        
        self.is3DTouchAvailable()
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
    }
    
    func is3DTouchAvailable() {
        
        if self.traitCollection.forceTouchCapability == UIForceTouchCapability.Available {
            
            self.registerForPreviewingWithDelegate(self, sourceView: self.view)
            
            self.longPress.enabled = false
        } else {
            
            self.longPress.enabled = true
        }
    }
    
    // Mark: 3D Touch Delegate Methods
    func previewingContext(previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        
        if ((self.presentedViewController?.isKindOfClass(PeekViewController)) != nil) {
            return nil
        }
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let peekView = storyboard.instantiateViewControllerWithIdentifier("PeekView")
        
        return peekView
    }

    func previewingContext(previewingContext: UIViewControllerPreviewing, commitViewController viewControllerToCommit: UIViewController) {
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let popView = storyboard.instantiateViewControllerWithIdentifier("PopView")
        
        self.showViewController(popView, sender: self)
    }
    
    override func traitCollectionDidChange(previousTraitCollection: UITraitCollection?) {
        
        self.is3DTouchAvailable()
    }
    
    func longPressPeek() {
        
        self.longPress.enabled = false
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let peekView = storyboard.instantiateViewControllerWithIdentifier("PeekView")
        
        let presenter = self.grabTopViewController()
        presenter.showViewController(peekView, sender: self)
    }
    
    func grabTopViewController() -> UIViewController {
        
        var top = UIApplication.sharedApplication().keyWindow?.rootViewController
        while ((top?.presentedViewController) != nil) {
            top = top?.presentedViewController
        }
        
        return top!
    }

}

