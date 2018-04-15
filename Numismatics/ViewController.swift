//
//  ViewController.swift
//  Numismatics
//
//  Created by Kylie Benfield on 4/13/18.
//  Copyright © 2018 Kylie Benfield. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    let formula = Formula()
    
    @IBOutlet weak var intVal: UILabel!
    @IBOutlet weak var intEndVal: UILabel!
    
    @IBOutlet weak var principal: UITextField!
    @IBOutlet weak var rate: UITextField!
    @IBOutlet weak var time: UITextField!
    
    @IBAction func calc(_ sender: Any) {
        intVal.text = String(format:"%.2f",
                         formula.simpleInterest(
                            principal: Double(principal.text!)!,
                            rate: Double(rate.text!)!,
                            time: Double(time.text!)!
                         )
                      )
        
        intEndVal.text = String(format:"%.2f",
                                formula.simpleInterestEndingValue(
                                    principal: Double(principal.text!)!,
                                    rate: Double(rate.text!)!,
                                    time: Double(time.text!)!
            )
        )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        intVal.text = String(format:"%.2f", formula.simpleInterest(principal: 1000, rate: 0.10, time: 3))
        
        intEndVal.text = String(format:"%.2f", formula.simpleInterestEndingValue(principal: 1000, rate: 0.10, time: 3))

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

