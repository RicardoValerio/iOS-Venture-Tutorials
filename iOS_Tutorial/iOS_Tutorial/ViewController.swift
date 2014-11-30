//
//  ViewController.swift
//  iOS_Tutorial
//
//  Created by Ricardo Valério on 29/11/14.
//  Copyright (c) 2014 Ricardo Valério. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeLabel(sender: AnyObject) {
        myLabel.text = "Hello \(myTextField.text)!"
        // faz com que o keyboard desapareça
        // quando for clicado
        self.myTextField.resignFirstResponder()
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
    
}

