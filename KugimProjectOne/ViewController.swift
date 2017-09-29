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
    
    
    
    @IBOutlet weak var nameEnterTextField: UITextField!
    @IBOutlet weak var nameList: UILabel!
    
    
    @IBAction func clearButton() {
        
        names = nameEnterTextField.text!
        
        if namesArray.count != 0 {
            namesArray.removeLast()
            names = ""
            for (key,value) in namesArray.enumerated() {
                names += "\n"  + String(key + 1) + "-) " + value
            }
            nameList.textColor = UIColor.red
            nameList.text = names
            
            
        } else {
            
            let alert = UIAlertController(title: "Alert", message: "There is no item that you can delete!", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    @IBAction func addNameButton() {
        
        
        if (nameEnterTextField.text?.characters.count)! >= 5 {
            
            names = nameEnterTextField.text!
            namesArray.append(names)
            print (namesArray)
            names = ""
            for (key,value) in namesArray.enumerated() {
                
                names += "\n"  + String(key + 1) + "-) " + value
                
            }
            nameList.text = names
            nameList.textColor = UIColor.blue
            
            
        } else {
            
            
            let alert = UIAlertController(title: "Alert", message: "The name that you entered is less than 5 charactes. Please enter the name again!", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
            
            
            
        }
        nameEnterTextField.text = ""
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

