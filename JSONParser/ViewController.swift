//
//  ViewController.swift
//  JSONParser
//
//  Created by Ross on 09/08/2017.
//  Copyright © 2017 Braaaaap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let path = Bundle.main.path(forResource: "menu", ofType: "json") else { return }
        let url = URL(fileURLWithPath: path)
        
        do {
            
            let data = try Data(contentsOf: url)
            let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
            //print(json)
            
            guard let menuDict = json as? [String: Any] else { return }
            //print(menuDict)
            
            guard let drinks = menuDict["drinks"] as? [[String: Any]] else { return }
            print(drinks)
        }
        catch {
            print(error)
        }
        
    }
    
}
