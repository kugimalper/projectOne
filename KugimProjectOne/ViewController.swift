//
//  ViewController.swift
//  KugimProjectOne
//
//  Created by ST5 on 28.09.2017.
//  Copyright © 2017 Kugim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var alertForCharacterControl: UILabel!
    @IBOutlet weak var nameEnterTextField: UITextField!
    @IBOutlet weak var nameList: UILabel!
    @IBAction func clearButton() {
    }
    @IBAction func addNameButton() {
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

