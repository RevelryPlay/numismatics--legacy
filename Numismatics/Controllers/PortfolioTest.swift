//
//  PortfolioTest.swift
//  Numismatics
//
//  Created by Andrew on 4/15/18.
//  Copyright © 2018 Kylie Benfield. All rights reserved.
//

import Foundation

class PortfolioTest {
    
    func writePortfolioToConsole() {
        
        let portfolio = Portfolio(withDataSource: "none")
        
        let start = Date(timeIntervalSinceNow: 0)
        let end = Date(timeIntervalSinceNow: -86400) // one day in seconds
        
        portfolio.writePortfolioToConsole(start: start, end: end)
        
    }
    
}
