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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let realm = try! Realm()
        print(realm);
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

