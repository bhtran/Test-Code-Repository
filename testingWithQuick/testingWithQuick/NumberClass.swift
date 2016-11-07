//
//  NumberClass.swift
//  testingWithQuick
//
//  Created by Bao Tran on 8/30/16.
//  Copyright © 2016 Bao Tran. All rights reserved.
//

import Foundation

class NumberClass {
    
    let arrayOfNumbers = [2, 6, 10]
    
    func evenToOdd(arrayOfNumbers: [Int]) -> [Int] {
        
        var processedNumbers = [Int]()
        
        for number in arrayOfNumbers {

            let processedNumber = number / 2
            
            processedNumbers.append(processedNumber)
        
        }
        return processedNumbers
    }

    
    
}
