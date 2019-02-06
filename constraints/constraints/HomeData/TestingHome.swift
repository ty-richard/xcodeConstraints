//
//  TestingHome.swift
//  constraints
//
//  Created by Ty Richard on 2/6/19.
//  Copyright © 2019 Ty Richard. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import SwiftKeychainWrapper

class TestingHome: UIViewController {

    @IBAction func GoToTableButton(_ sender: Any) {
        self.performSegue(withIdentifier: "LookAtTable", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
}
