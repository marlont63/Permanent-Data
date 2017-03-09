//
//  ViewController.swift
//  Permanent Data Storage
//
//  Created by Marlon Raschid Tavarez Parra on 8/9/16.
//  Copyright © 2016 MyBCloud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //Guardamos el nombre "Marlon con la key "name"
        UserDefaults.standard.set("Marlon", forKey:"name")
        
        // Obtenemos el dato almacenado de esta forma 
        let nameObject = UserDefaults.standard.object(forKey: "name")
        
        if let name = nameObject as? String
        {
            print(name)
        }
        
        
        let arr = [1,2,3,4]
        
        UserDefaults.standard.set(arr, forKey: "array")
        
        let arrayObject = UserDefaults.standard.object(forKey: "array")
        
        if let array = arrayObject as? NSArray {
            print(array)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

