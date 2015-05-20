//
//  Leap.swift
//  Leap
//
//  Created by Damien Burke on 5/20/15.
//  Copyright (c) 2015 Damien Burke. All rights reserved.
//

import Foundation

class Year {
 
    let isLeapYear: Bool
    
    init(calendarYear:NSInteger){
        if(!isDivisableBy(calendarYear, 4)) {
            isLeapYear = false
            return
        }
        
        if(isDivisableBy(calendarYear, 100) && !isDivisableBy(calendarYear, 400)) {
            isLeapYear = false
            return
        }
        
        isLeapYear = true
    }
}

func isDivisableBy(number:NSInteger, divisor:NSInteger) -> Bool {
    return (number % divisor) == 0
}
