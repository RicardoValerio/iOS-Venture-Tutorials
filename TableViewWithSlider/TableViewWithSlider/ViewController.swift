//
//  ViewController.swift
//  TableViewWithSlider
//
//  Created by Ricardo Valério on 11/02/15.
//  Copyright (c) 2015 Ricardo Valério. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // Class Atributes
    
    
    // Outlets
    
    @IBOutlet weak var sliderValue: UISlider!
    
    @IBOutlet weak var table: UITableView!

    
    // Actions
    
    @IBAction func sliderMoved(sender: UISlider) {
        // Debug
        //        println(self.sliderValue.value)
        self.table.reloadData()
    }
    

    
    
    // Methods implemented from UITableViewDelegate and UITableViewDataSource
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "ricardo_cell")
        
        let timesTable: Int = Int(self.sliderValue.value * 20)
        
        cell.textLabel?.text = String(timesTable * indexPath.row)
        
        return cell
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

