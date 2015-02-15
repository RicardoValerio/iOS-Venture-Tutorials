//
//  ViewController.swift
//  MultitaskingDemo
//
//  Created by Simon Allardice on 10/12/14.
//  Copyright (c) 2014 Simon Allardice. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // ===========================================================================
    // método que é chamado quando a view deste controller é acabada ser renderizada
    override func viewDidLoad() {
        super.viewDidLoad()
        println("In ViewController - viewDidLoad")
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    // ===========================================================================
    // Existem muitos mais métodos que podem ser implementados que gerem o lifeCycle
    // da aplicação
    // por exemplo:
    // viewDidDisapper()
    // viewDidUnload()
    // viewWillAppear()
    // viewWillDisappear()
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        println("In ViewController - didReceiveMemoryWarning")
        
        // Dispose of any resources that can be recreated.
    }


}

