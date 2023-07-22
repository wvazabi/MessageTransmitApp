//
//  ViewController.swift
//  MessageTransmitApp
//
//  Created by Enes Kaya on 20.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    var hi: String = "Hello World"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("ctrl+Future")
        print("Lets Goo!")
      
        
    }
    
    @IBAction func goToSecondVC(_ sender: Any) {
        let secondVC = ViewController3() // 1
        secondVC.transferredText = textField.text ?? ""
                present(secondVC, animated: true, completion: nil) // 3
    
    }
    
    
    @IBAction func save1ButtonClicked(_ sender: Any) {
        goToSecondVC(self)
    }
    

}

