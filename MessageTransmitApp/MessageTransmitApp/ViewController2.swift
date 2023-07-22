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
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        detaildLabel.text = dataTransmissin
        
    }
    

    @IBAction func saveButtonClicked(_ sender: Any) {
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
