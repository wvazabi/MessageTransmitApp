//
//  ViewController2.swift
//  MessageTransmitApp
//
//  Created by Enes Kaya on 23.07.2023.
//

import UIKit


class ViewController2: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    var dataTransmissin: String = ""
    @IBOutlet weak var detaildLabel: UILabel!
    @IBOutlet weak var saveButton: UIButton!
    var emergencyDelegate: DataTransferable?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detaildLabel.text = dataTransmissin
        
    }
    

    @IBAction func saveButtonClicked(_ sender: Any) {
        
    }
    
    
    
    @IBAction func emergencyButtonClicked(_ sender: UIButton) {
        dismiss(animated: true) {
            self.emergencyDelegate?.onEmergencyStatus(phoneNumber: sender.titleLabel!.text!)
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
}
