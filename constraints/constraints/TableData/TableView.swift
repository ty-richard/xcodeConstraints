//
//  TableView.swift
//  constraints
//
//  Created by Ty Richard on 2/6/19.
//  Copyright © 2019 Ty Richard. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import SwiftKeychainWrapper

class TableView: UIViewController {

    @IBOutlet weak var PostTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // https://jsonplaceholder.typicode.com/posts
    }
}
