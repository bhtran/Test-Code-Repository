//
//  Dog.swift
//  MVCExample
//
//  Created by Bao Tran on 10/2/16.
//  Copyright © 2016 Bao Tran. All rights reserved.
//

import Foundation

class Dog {
    private var _prefix: String!
    private var _name: String!
    
    var name: String {
        return _name
    }
    
    var prefix: String {
        return _prefix
    }
    
    var fullName: String {
        return "\(_prefix) \(_name)"
    }

    init(prefix: String, name: String) {
        self._prefix = prefix
        self._name = name
    }

}

