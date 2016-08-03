//
//  ViewController.swift
//  WeFlee
//
//  Created by Abdelrahman Mohamed on 8/3/16.
//  Copyright © 2016 Abdelrahman Mohamed. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    let BasseURL = "http://partners.api.skyscanner.net/apiservices/reference/v1.0/locales?apiKey=we262663483751863286277529220618"
    let apiKey = "we262663483751863286277529220618"
    
//    let URL = BasseURL + apiKey
    
    var resultArray:NSDictionary = NSDictionary()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GetData()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func GetData() {
        
        Alamofire.request(.GET, BasseURL).responseJSON { (response) in
            
            print(response.request)  // original URL request
            print(response.response) // URL response
            print(response.data)     // server data
            print(response.result)   // result of response serialization
            
            self.resultArray = (response.result.value as? NSDictionary)!
            if let JSON = response.result.value {
                
                print("JSON: \(JSON)")
            }

        }
    }


}

