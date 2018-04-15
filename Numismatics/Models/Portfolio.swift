//
//  Portfolio.swift
//  Numismatics
//
//  Created by Andrew on 4/15/18.
//  Copyright © 2018 Kylie Benfield. All rights reserved.
//

import Foundation

class Portfolio {
    
    init(withDataSource: String) {
        
        // TBD
        
    }
    
    func generatePaymentDates(start: Date, end: Date) {
        
        var instruments = [Instrument]()
        
        // load the instruments in portfolio, testing for now
        instruments.append(Instrument(withDataSource: "none"))
        instruments.append(SimpleInterest(withDataSource: "none"))
        
        for instrument in instruments {
        
            let dates = instrument.getPaymentDates(start: start, end: end)
        
            for date in dates {
                
                let payment = instrument.getPaymentForDate(date: date)
                
                print(date)
                print(payment)
                
            }
            
        }
        
        // --
        
    }
    
}
