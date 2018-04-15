//
//  Instrument.swift
//  Numismatics
//
//  Created by Andrew on 4/14/18.
//  Copyright © 2018 Kylie Benfield. All rights reserved.
//

import Foundation

struct InstrumentConstants {
    struct DateRanges {
        static let day = 1;
        static let week = 2;
        static let paycheck = 3;
        static let biweekly = 4;
        static let bimonthly = 5;
        static let monthly = 6;
        static let yearly = 7;
        static let custom = 8;
    }
}

class Instrument {
    
    var description: String?
    
    func getPaymentDates(start: Date, end: Date) -> [Date] {
        
        //InstrumentConstants.DateRanges.day
        
        var periods: [Date]
        
        var nextDate: Date
        
        
//        let formatter = DateFormatter()
//        formatter.dateFormat = "yyyymmdd"
//        nextDate = formatter.date(from: "20160601")
        
        periods.append(nextDate)
        
        return periods
        
    }
    
    func getPaymentForDate(date: Date) -> Double {
        
        var payment: Double
        
        payment = 123
        
        return payment
        
    }
    
}
