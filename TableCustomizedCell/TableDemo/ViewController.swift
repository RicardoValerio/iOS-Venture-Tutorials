//
//  ViewController.swift
//  TableDemo
//
//  Created by Simon Allardice on 10/13/14.
//  Copyright (c) 2014 Simon Allardice. All rights reserved.
//

import UIKit

// primeiro alterou-se no storyBoard, uma proprieda da cell (dentro da table view)
// no painel da direita, mudar o estilo para "subtitle" em vez de basic
//
// depois neste ficheiro fazer com que o nome do autor que está no array de tuples
// apareça nesse subtitulo
//
// depois adicionar um "image set" no ficheiro "images.xcassets" clicando no botão
// que tem um sinal de "+", em baixo.
// arrastar as imagens necessárias e depois neste ficheiro fazer com que essa imagem
// apareça (isso é feito no método em que está a ser inserido os nomes dentro da celula de cada linha)
//
// por fim, para fins mais estéticos, alterou-se no storyboard, no painel da direita
// uma propriedade da cell uma vais mais, chamada "Accessory" e mudou-se para
// "Disclosure Indicator" (dando a ideia que pode-se carregar nessa linha e abrir 
// uma nova view com informação mais detalhada sobre essa linha seleccionada)

// e é isso, cada vez mais está-se a parecer com uma app a sério lol xD

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
        } else {
            return webCourses.count
        }
        
        

    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        if indexPath.section == 0 {
            let (courseTitle,courseAuthor) = devCourses[indexPath.row]
            cell.textLabel.text = courseTitle
            // alterar o texto da descrição (a tal subtitle que foi alterada no storyboard)
            cell.detailTextLabel?.text = courseAuthor
        } else {
            let (courseTitle,courseAuthor) = webCourses[indexPath.row]
            cell.textLabel.text = courseTitle
            // e aqui também
            cell.detailTextLabel?.text = courseAuthor
        }
        
        // inserir a imagem na cell
        var myImage = UIImage(named: "CellIcon")
        cell.imageView.image = myImage
        
        return cell
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Developer Courses"
        } else {
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

