//
//  ViewController.swift
//  CatYears
//
//  Created by Ricardo Valério on 10/02/15.
//  Copyright (c) 2015 Ricardo Valério. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var showLabel: UILabel!
    
    
    @IBAction func FindCatAge(sender: AnyObject) {
        if !textField.text.isEmpty && (textField.text.toInt() > 0){
            showLabel.text = "Your cat is \(String(textField.text.toInt()! * 7)) years old"
            textField.text = ""
        }else{
            showLabel.text = "Please insert a number value"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

