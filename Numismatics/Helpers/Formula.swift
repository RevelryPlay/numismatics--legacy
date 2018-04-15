//
//  Formula.swift
//  Numismatics
//
//  Created by Kylie Benfield on 4/14/18.
//  Copyright © 2018 Kylie Benfield. All rights reserved.
//

import Foundation

class Formula {
 
    // MARK: Simple Interest
    func simpleInterest(principal: Double, rate: Double, time: Double) -> Double {
        return principal * rate * time
    }
    
    
    func simpleInterestEndingValue(principal: Double, rate: Double, time: Double) -> Double {
        return principal * (1 + rate * time)
    }
    

    
    // MARK: Compound Interest
    func compoundInterest(principal: Double, rate: Double, periods: Double) -> Double {
        return principal * (pow((1 + rate), periods) - 1)
    }
    
    
    func compoundInterestEndingValue(principal: Double, rate: Double, periods: Double) -> Double {
        return principal * pow((1 + rate), periods)
    }

    
    
    // MARK: Annual Percentage Yeild
    func apy(rate: Double, periods: Double) -> Double {
        return pow(1 + rate / periods, periods) - 1
    }
    
    
    
    // MARK: Continuous Compounding
    func continuousCompounding(principal: Double, rate: Double, time: Double) -> Double {
        return principal * pow(M_E, rate * time)
    }
    
    
    
    // MARK: Loan Payments
    // Standard Fixed Annuity
    // PresentValue, RatePerPeriod, NumberOfPeriods
    func loanPayment(value: Double, rate: Double, periods: Double) -> Double {
        return (rate * value) / (1 - pow(1 + rate, -periods))
    }
    
    
    
    // MARK: Remaining Loan Balance
    // Note: Only for loans that are amortized
    // PresentValue, Payment, RatePerPayment, NumberOfPaymentsMade
    func remainingLoanBalance(value: Double, payment: Double, rate: Double, periods: Double) -> Double {
        return value * pow(1 + rate, periods) -
            payment * ((pow(1 + rate, periods) - 1) / rate)
    }
}
