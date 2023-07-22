//
//  ViewController3.swift
//  MessageTransmitApp
//
//  Created by Enes Kaya on 23.07.2023.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var transferLabel: UILabel!
    var transferredText: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        transferLabel.text = transferredText
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
