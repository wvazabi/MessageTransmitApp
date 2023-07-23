//
//  ViewControllerDel2.swift
//  MessageTransmitApp
//
//  Created by Enes Kaya on 23.07.2023.
//

import UIKit

class ViewControllerDel2: UIViewController {

    @IBOutlet weak var enteringTextField: UITextField!
    var dataDelegate: DataTransfer?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func saveData(_ sender: UIButton) {
        dismiss(animated: true) {
            self.dataDelegate?.printDataLabel(data: self.enteringTextField.text!)
            
            //self.emergencyDelegate?.onEmergencyStatus(phoneNumber: sender.titleLabel!.text!)
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
