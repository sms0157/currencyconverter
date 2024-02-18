//
//  NavigationViewController.swift
//  assignment6
//
//  Created by Sabrina Summerfield on 2/17/24.
//

import UIKit

class NavigationViewController: UIViewController {

    @IBOutlet weak var amountEntered: UILabel!

    @IBOutlet weak var euroLabel: UILabel!
    
    @IBOutlet weak var cadLabel: UILabel!
    
    @IBOutlet weak var jpyLabel: UILabel!
    
    @IBOutlet weak var mxnLabel: UILabel!
    
    
    
    
    var logic = ConversionLogic()
    
    var usd = ""
    var euro = ""
    var cad = ""
    var jpy = ""
    var mxn = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        amountEntered.text = "USD Entered: $\(usd)"
                
                let text = CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: usd))
                
                if text {
                    
                    if euro == "0" {
                        euroLabel.isHidden = true
                        
                    } else {
                        euroLabel.text = "€ \(euro)"
                    }
                    
                    if cad == "0" {
                        cadLabel.isHidden = true
                    } else {
                        cadLabel.text = "CA$ \(cad)"
                    }
                    
                    if jpy == "0" {
                        jpyLabel.isHidden = true
                    } else {
                        jpyLabel.text = "JP¥ \(jpy)"
                    }
                    
                    if mxn == "0" {
                        mxnLabel.isHidden = true
                    } else {
                        mxnLabel.text = "MX$ \(mxn)"
                    }
                } else {
                    amountEntered.text = ""
                    euroLabel.isHidden = true
                    cadLabel.isHidden = true
                    jpyLabel.isHidden = true
                    mxnLabel.isHidden = true
                }
    }
    
    @IBAction func back_button(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
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
