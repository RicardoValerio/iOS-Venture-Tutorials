//
//  ViewController.swift
//  PermanentStorage
//
//  Created by Ricardo Valério on 12/02/15.
//  Copyright (c) 2015 Ricardo Valério. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myArray  = [1,2,3]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
//         NSUserDefaults.standardUserDefaults().setObject("Ricardito", forKey: "name")
       println(NSUserDefaults.standardUserDefaults().objectForKey("name")!)


//        NSUserDefaults.standardUserDefaults().setObject(self.myArray, forKey: "RicarditoArray")
        println(NSUserDefaults.standardUserDefaults().objectForKey("RicarditoArray")![2])


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

