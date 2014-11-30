//
//  ViewController.swift
//  PickerData
//
//  Created by Ricardo Valério on 30/11/14.
//  Copyright (c) 2014 Ricardo Valério. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {


    let moodArray = ["Happy","Sad","Maudlin","Ecstatic","Overjoyed",
                     "Optimistic","Bewildered","Cynical","Giddy",
                     "Indifferent","Relaxed"]
    
    
    // estes dois próximos métodos pertencem ao UIPickerViewDataSource e são
    // obrigatórios de serem implementados
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.moodArray.count
    }
    
    // datasource são componentes de contém métodos que se dizem respeito a
    // informação. faz sempre a pergunta "How many"
    
    // delegates são responsáveis por actions, coisas a fazer, eventos, etc
    // fazem as perguntas "What e When"
    
    // este próximo método vem do UIPickerViewDelegate
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return moodArray[row]
    }
    
    // este próximo método também vem do UIPickerViewDelegate mas é opcional
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var newBackgroundColor: UIColor
        
        switch row {
        case 0,3,4,5,8:
            newBackgroundColor = UIColor.yellowColor()
        case 1,2:
            newBackgroundColor = UIColor.grayColor()
        case 6,7,9:
            newBackgroundColor = UIColor.lightGrayColor()
        default:
            newBackgroundColor = UIColor(red: 200/255, green: 255/255, blue: 200/255, alpha: 1.0)
        }
        
        self.view.backgroundColor = newBackgroundColor
        
    }
    
    // falta agora o passo mais importante que é no storyboard, num dos paneis da 
    // direita criar a ligação entre o datasource e o delegate deste pickerData com o ViewController (esta classe), e isso é feito simplesmente arrastando
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

