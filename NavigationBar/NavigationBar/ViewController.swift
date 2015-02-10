//
//  ViewController.swift
//  NavigationBar
//
//  Created by Ricardo Valério on 10/02/15.
//  Copyright (c) 2015 Ricardo Valério. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // class variables
    var myTimer = NSTimer()
    var seconds = 0
    
    // Outlets
    @IBOutlet weak var timer: UILabel!
    
    
    
    // Actions
    @IBAction func Play(sender: AnyObject) {
        
        self.myTimer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateTime"), userInfo: nil, repeats: true)
    }
    
    @IBAction func Pause(sender: AnyObject) {
        self.myTimer.invalidate()
    }
    
    @IBAction func Stop(sender: AnyObject) {
        self.myTimer.invalidate()
        self.seconds = 0
        self.timer.text = "0"
    }
    
    
    // class method called by Play() Action
    func updateTime(){
        self.seconds++
        self.timer.text = String(self.seconds)
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

