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
    
    var postData: [Post] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createTable()
        PostTableView.delegate = self
        PostTableView.dataSource = self
    }
    
    func createTable() {
        
        let URL = "https://jsonplaceholder.typicode.com/posts"
        
        Alamofire.request(URL)
            .validate(statusCode: 200 ..< 300)
            .responseJSON { response in
                switch response.result {
                case .failure(let error):
                    print(error)
                case .success(let value):
                    let json = JSON(value)
                    // print(json)
                    json.array?.forEach({ (post) in
                        let info = Post(title: post["title"].stringValue, body: post["body"].stringValue)
                        self.postData.append(info)
                        print(info)
                    })
                }
        }
    }
}

extension TableView: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.postData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "testCell") as! TableCell
        // cell.IdOfPost.text = self.postData[indexPath.row].id
        cell.Title.text = self.postData[indexPath.row].title
        cell.Body.text = self.postData[indexPath.row].body
        return cell
    }
}
