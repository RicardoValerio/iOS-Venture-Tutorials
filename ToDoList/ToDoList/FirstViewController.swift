//
//  FirstViewController.swift
//  ToDoList
//
//  Created by Ricardo Valério on 12/02/15.
//  Copyright (c) 2015 Ricardo Valério. All rights reserved.
//

import UIKit


// Global Variables, Constants
// If defined here, they can be reached in other files

// Array of String wich are immediatly initialized
var toDoList = [String]()


// Adicionar o delegate e o datasource depois de criar a ligação no storyboard 
// - arrastar da tableView para este viewController
class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // Class Atributes
    
    // Outlets
    @IBOutlet weak var toDoListTable: UITableView!
    
    
    // Actions
    
    // Methods implemented from the UITableViewDelegate and UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "ricardo_cell")
        cell.textLabel?.text = toDoList[indexPath.row]
        return cell
    }
    
    
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete{
            toDoList.removeAtIndex(indexPath.row)
            
            // depois de eliminado o item, basta redifinir a persistencia de dados
            NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "todoList")
            
            // reload nos dados da table que é para o item que eliminamos desaparecer
            toDoListTable.reloadData()
        }
    }
    
    
    

    // método de fluxo do programa, parecido aos que já estavam definido (2 abaixo)
    // mas que é chamado sempre que a view aparece
    // Vai ser usado para carregar a table com os valores, caso contrário se
    // viessemos da segunda view para a primeira, teoricamente não 
    // devia estar lá nada, mas a verdade é que se não implementarmos
    // este método o resultado é exatamente o mesmo
//    override func viewDidAppear(animated: Bool) {
//        self.toDoListTable.reloadData()
//    }
//    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        // se existir uma persistência de dados, isto é, se for diferente de nil
        // então usa essa persistência e atribui esses dados à variável global todoList
        if NSUserDefaults.standardUserDefaults().objectForKey("todoList") != nil{
           toDoList = NSUserDefaults.standardUserDefaults().objectForKey("todoList") as [String]
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

