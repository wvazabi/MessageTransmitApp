//
//  ViewControllerDel1.swift
//  MessageTransmitApp
//
//  Created by Enes Kaya on 23.07.2023.
//

import UIKit

protocol DataTransfer {
    func printDataLabel (data:String)
}

class ViewControllerDel1: UIViewController {
    @IBOutlet weak var labelDel1: UILabel!
    var tempo: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }
    @IBAction func enterData(_ sender: Any) {
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueDel" {
            if let detailVC = segue.destination as? ViewControllerDel2 {
                detailVC.dataDelegate = self
            }
        }
    }
}

extension ViewControllerDel1: DataTransfer{
    func printDataLabel(data: String) {
        labelDel1.text = data
        print("test18")
    }
    
    
    
    
}
