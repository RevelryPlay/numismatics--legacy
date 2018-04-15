//
//  SimpleInterest.swift
//  Numismatics
//
//  Created by Andrew on 4/15/18.
//  Copyright © 2018 Kylie Benfield. All rights reserved.
//

import Foundation

class SimpleInterest: Instrument {
    
    var principal: Double
    var rate: Double
    var time: Double
    
    override init(withDataSource: String) {
        
        super.init(withDataSource: withDataSource)
        
        self.principal = 0
        self.rate = 0
        self.time = 0
        
    }
    
    override func getPaymentForDate(date: Date) -> Double {
        
        let formula = Formula()
        var amount: Double
        
        // this doesn't really make sense, but it's just an example
        amount = formula.simpleInterest(principal: self.principal, rate: self.rate, time: self.time)
        
        return amount
        
    }
    
}
