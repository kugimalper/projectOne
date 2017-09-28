//
//  ViewController.swift
//  KugimProjectOne
//
//  Created by ST5 on 28.09.2017.
//  Copyright © 2017 Kugim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var names : String = ""
    var namesArray = [String]()
    
    
    @IBOutlet weak var alertForCharacterControl: UILabel!
    @IBOutlet weak var nameEnterTextField: UITextField!
    @IBOutlet weak var nameList: UILabel!
    
    @IBAction func clearButton() {
        
        names = nameEnterTextField.text!
        
        if namesArray.count != 0 {
            namesArray.removeLast()
            names = ""
            for i in namesArray {
                names += "\n" + i
            }
            nameList.text = names
            
        } else {
            alertForCharacterControl.isHidden = false
            alertForCharacterControl.text = "Silinecek isim bulunamadı!"
        }
        
    }
    @IBAction func addNameButton() {
        
        if (nameEnterTextField.text?.characters.count)! >= 5 {
            
            names = nameEnterTextField.text!
            namesArray.append(names)
            print (namesArray)
            names = ""
            for i in namesArray {
                names += "\n" + i
            }
            nameList.text = names
            
        } else {
            alertForCharacterControl.isHidden = false
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        alertForCharacterControl.isHidden = true
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

