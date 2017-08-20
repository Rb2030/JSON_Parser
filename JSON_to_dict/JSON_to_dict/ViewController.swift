//
//  ViewController.swift
//  JSON_to_dict
//
//  Created by Ross on 20/08/2017.
//  Copyright © 2017 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customerOrder = ["hamburger", "coke"] {

        guard let path = Bundle.main.path(forResource: "menu", ofType: "json") else { return }
        let url = URL(fileURLWithPath: path)
        
        do {
            
            let data = try? Data(contentsOf: url)
            let json = try? JSONSerialization.jsonObject(with: data!, options: []) as! [String: Any]
            //print(json!)
        }
        
        
        var result = [String]()
        
        for item in json {
            if let index = customerOrder.index(of: item) {
                result.append(item)
        print(result)
            }
        }
        
    }
}
}

//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        guard let path = Bundle.main.path(forResource: "menu", ofType: "json") else { return }
//        let url = URL(fileURLWithPath: path)
//        
//        do {
//            
//            let data = try? Data(contentsOf: url)
//            let json = try? JSONSerialization.jsonObject(with: data!, options: .mutableContainers)
//            print(json!)
//            
//            }
//        
//        struct Menu {
//            struct Product {
//                let item: String; let price: Int
//            }
//            
//            var products: [Product]
//            
//            init(products: [Product] = []) {
//                self.products = products
//            }
//            
//        }
//        
//        extension Menu: Encodable {
//            struct ProductKey: CodingKey {
//                var StringValue: String
//                init?(stringValue: String) {
//                    self.stringValue = stringValue
//                }
//                
//                var IntValue: Int? { return nil }
//                init?(intValue: Int {return nil }
//                
//                static let price = ProductKey(stringValue: )!
//                static let item = ProductKey(stringValue: "coke", "pepsi", "water")!
//            }
//        }
//    }
//}
