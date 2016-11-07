//
//  BorderImage.swift
//  MVCExample
//
//  Created by Bao Tran on 10/2/16.
//  Copyright © 2016 Bao Tran. All rights reserved.
//

import UIKit

class BorderImage: UIImageView {

    override func awakeFromNib() {
        self.layer.borderWidth = 8
        self.layer.borderColor = UIColor.blueColor().CGColor
    }
    
}
