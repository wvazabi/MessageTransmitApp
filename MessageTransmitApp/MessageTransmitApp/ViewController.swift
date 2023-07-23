//
//  ViewController.swift
//  MessageTransmitApp
//
//  Created by Enes Kaya on 20.07.2023.
//

import UIKit

protocol DataTransferable {
    func onEmergencyStatus(phoneNumber: String)
}

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var segueButton: UIButton!
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
        //goToSecondVC(self)
        label.text = textField.text
    }
    
    @IBAction func Segue(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detailSegue" {
            if let detailVC = segue.destination as? ViewController2 { // 1
                detailVC.dataTransmissin =  label.text ?? "" // 2
            }
        }
        
        if segue.identifier == "delagationIdentifier" {
                    if let detailVC = segue.destination as? ViewController2 {
                        detailVC.emergencyDelegate = self // 1
                    }
                }
        
     }
    
}

extension ViewController: DataTransferable {
    func onEmergencyStatus(phoneNumber: String) {
        print("Acil bir durumda \(phoneNumber) arayın.")
    }
}
