//
//  ViewController.swift
//  DatePicker
//
//  Created by Ricardo Valério on 30/11/14.
//  Copyright (c) 2014 Ricardo Valério. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    @IBAction func findDayOfTheWeek(sender: AnyObject) {
        // inferido como NSDate, isto é, não é necessário colocar :NSDate na definição da variável
        var chosenDate = self.datePicker.date
        
        // criar um NSDateFormatter
        var formatter = NSDateFormatter()
        formatter.dateFormat = "EEEE"
        
        // criar a mensagem
        let day = formatter.stringFromDate(chosenDate)
        let result = "That was a \(day)"
        
        // criar um pop-up alert
        let myAlert = UIAlertController(title: result, message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        
        // adicionar um botão ao frame do alert
        myAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        // adicionar um botão ao frame do alert
        myAlert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Default, handler: nil))
        // adicionar um botão ao frame do alert
        myAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        // adicionar um botão ao frame do alert
        myAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        
        // mostrar o alert neste viewcontroller
        self.presentViewController(myAlert, animated: true, completion: nil)
        
        
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

