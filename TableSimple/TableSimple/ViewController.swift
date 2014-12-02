//
//  ViewController.swift
//  TableSimple
//
//  Created by Ricardo Valério on 02/12/14.
//  Copyright (c) 2014 Ricardo Valério. All rights reserved.
//

import UIKit


// Depois de arrastar no storyboard a ligação/conecção (ultimo icone no painel da direita)
// para o controller que irá satisfazer a implementação desses métodos do datasource ou
// delegate ou whatever it may be, é necessário extender a definição da classe e chamar
// UITableViewDataSource
// assim que o fazemos recebemos logo um erro nessa linha a dizer que não
// estamos a cumprir com o protocolo, que no fundo é, a implementação obrigatória
// de certos métodos

class ViewController: UIViewController, UITableViewDataSource {

    // arrays constituidos por tuples
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
    
    
    
    
    
    
    // secções consistem em agrupamentos de informação
    // o melhor exemplo é a agenda telefónica que está organizada por
    // várias secções, cada um sendo uma letro do alfabeto.
    // portanto, essa app de contactos terá 26 sections
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    

/******************************************************************************
*
******************************************************************************/
    
    
    // nº de linhas por secção
// 1ª tentativa
//    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 5
//    }
    
    
// 2ª tentativa
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.devCourses.count
    }
    
    
    
/******************************************************************************
*
******************************************************************************/

    
    // dentro deste método iremos criar uma célula com um determinado conteúdo
    // por cada linha iterada
    //
    // irá ser chamado automaticamente para cada uma na "n" rowsInSection, isto é
    // para cada uma das, neste caso, 5 rows que foram explicitadas no método acima
    // portanto no fundo, funciona como um foreach loop

// 1ª tentativa
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        var cell = UITableViewCell()
//        cell.textLabel.text = "Hello"
//        return cell
//    }
    
// 2ª tentativa
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        var cell = UITableViewCell()
//        
//        // definição de um tuple
//        let (courseTitle, courseAuthor) = self.devCourses[indexPath.row]
//        
//        cell.textLabel.text = courseTitle
//        return cell
//    }
    
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
    
            // definição de um tuple
            let (courseTitle, courseAuthor) = self.devCourses[indexPath.row]
    
            cell.textLabel.text = courseTitle
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

