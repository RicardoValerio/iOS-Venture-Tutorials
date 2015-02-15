//
//  ThirdViewController.swift
//  TabbedAppDemo
//
//  Created by Ricardo Valério on 02/12/14.
//  Copyright (c) 2014 Ricardo Valério. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()

        println("viewDidLoad of the ThirdViewController")
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear( animated: Bool )
    {
        println("ThirdViewController is about to appear")
    }
    
    
    override func viewWillDisappear( animated: Bool )
    {
        println("ThirdViewController is about to disappear")
    }
    
    
    
    override func didReceiveMemoryWarning()
    {
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
