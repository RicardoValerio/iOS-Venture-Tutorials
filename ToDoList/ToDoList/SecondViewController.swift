//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Ricardo Valério on 12/02/15.
//  Copyright (c) 2015 Ricardo Valério. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    
    
    @IBOutlet weak var itemTextField: UITextField!
    
    
    
    @IBAction func addItem(sender: UIButton) {
        // Adiciona um elemento ao array global que foi definido do FirstViewController
        toDoList.append(self.itemTextField.text)
        
        // update na persistência de dados com o novo valor que foi adicionado
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "todoList")
        
        // limpar o textfield para promover a entrada de novos itens
        self.itemTextField.text = ""
    }
    
    
    
    
    // método que é chamado quando se clica
    // simplesmente na view (espaços brancos sem outlets)
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    // método que foi usado graças à implementação do delegate
    // que foi arrastado no storyboard para a viewcontroller, que é
    // este documento
    // depois foi necessário colocar lá em cima na definação da classe
    // o nome do delegate a que nos referimos
    // e o autocomplete irá mostrar este método que faz parte de muitos
    // outros e nos permite manipular o botão return no keyboard do iphone
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
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

