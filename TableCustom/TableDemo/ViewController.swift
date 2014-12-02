//
//  ViewController.swift
//  TableDemo
//
//  Created by Simon Allardice on 10/13/14.
//  Copyright (c) 2014 Simon Allardice. All rights reserved.
//

import UIKit

// como a aplicação irá ter mais do que uma secção
// a primeira coisa que foi feita, para além de ter 2 arrays com tuples, 
// foi ir ao storyboard e alterar uma das definições da tableView
// que é o "style". E em vez de ser "plain" irá ser "grouped"
//
// depois alterar o nº de secções (pois passou a ser 2)
//
// alterar os outros métodos e acrescentar um último para o título das sections
//

class ViewController: UIViewController, UITableViewDataSource {
    
    let devCourses = [
        ("iOS App Dev with Swift Essential Training","Simon Allardice"),
        ("iOS 8 SDK New Features","Lee Brimelow"),
        ("Data Visualization with D3.js","Ray Villalobos"),
        ("Swift Essential Training","Simon Allardice"),
        ("Up and Running with AngularJS","Ray Villalobos"),
        ("MySQL Essential Training","Bill Weinman"),
        ("Building Adaptive Android Apps with Fragments","David Gassner"),
        ("Advanced Unity 3D Game Programming","Michael House"),
        ("Up and Running with Ubuntu Desktop Linux","Scott Simpson"),
        ("Up and Running with C","Dan Gookin") ]
    
    
    let webCourses = [
        ("HTML Essential Training","James Williamson"),
        ("Building a Responsive Single-Page Design","Ray Villalobos"),
        ("Muse Essential Training","Justin Seeley"),
        ("WordPress Essential Training","Morten Rand-Hendriksen"),
        ("Installing and Running Joomla! 3: Local and Web-Hosted Sites","Jen Kramer"),
        ("Managing Records in SharePoint","Toni Saddler-French"),
        ("Design the Web: SVG Rollovers with CSS","Chris Converse"),
        ("Up and Running with Ember.js","Kai Gittens"),
        ("HTML5 Game Development with Phaser","Joseph Labrecque"),
        ("Responsive Media","Christopher Schmitt") ]

    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return devCourses.count
        }else{
            return devCourses.count
        }
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        

        if indexPath.section == 0 {
            let (courseTitle,courseAuthor) = devCourses[indexPath.row]
            cell.textLabel.text = courseTitle
        }else{
            let (courseTitle,courseAuthor) = webCourses[indexPath.row]
            cell.textLabel.text = courseTitle
        }
        
        return cell
    }
    

    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Developer Courses"
        }else{
            return "Web Courses"
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

