//
//  AddNoteViewController.swift
//  NoteAppCodeSchool
//
//  Created by Ricardo Valério on 30/11/14.
//  Copyright (c) 2014 Ricardo Valério. All rights reserved.
//

import UIKit

class AddNoteViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var myTextField: UITextField!
    
    
    @IBAction func myCancelButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        println("Text value entered is: \(textField.text)")
        textField.resignFirstResponder()
        return true
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
