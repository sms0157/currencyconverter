//
//  ViewController.swift
//  assignment6
//
//  Created by Sabrina Summerfield on 2/17/24.
//

import UIKit

class ViewController: UIViewController {
    
    var model = ConversionLogic()
    
    var amount = ""
    var amountEntered = ""
    var euroString = ""
    var cadString = ""
    var jpyString = ""
    var mxnString = ""
    
    
    @IBOutlet weak var inputUSD: UITextField!
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        guard NSCharacterSet(charactersIn: "+0123456789").isSuperset(of: NSCharacterSet(charactersIn: string) as CharacterSet) else {
            return false
        }
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var usdLabel: UILabel!
    
    @IBAction func USD(_ sender: UITextField) {
    }
    
    @IBAction func EUR(_ sender: UISwitch) {
        model.setEURO(sender.isOn)
    }
    
    @IBAction func CAD(_ sender: UISwitch) {
        model.setCAD(sender.isOn)
    }
    
    @IBAction func JPY(_ sender: UISwitch) {
        model.setJPY(sender.isOn)
    }
    
    @IBAction func MXN(_ sender: UISwitch) {
        model.setMXN(sender.isOn)
    }
    
    @IBAction func convert_button(_ sender: UIButton) {
        let userInput = inputUSD.text
        
        if model.EUROSwitch {
            euroString = model.convertEuro(userInput!)
        } else {
            euroString = "0"
        }
        
        if model.CADSwitch {
            cadString = model.convertCAD(userInput!)
        } else {
            cadString = "0"
        }
        
        if model.JPYSwitch {
            jpyString = model.convertJPY(userInput!)
        } else {
            jpyString = "0"
        }
        
        if model.MXNSwitch {
            mxnString = model.convertMXN(userInput!)
        } else {
            mxnString = "0"
        }
        
        self.performSegue(withIdentifier: "navigate", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "navigate" {
            let navigation = segue.destination as! NavigationViewController
            navigation.usd = inputUSD.text!
            navigation.euro = euroString
            navigation.cad = cadString
            navigation.jpy = jpyString
            navigation.mxn = mxnString
        }
    }
}
    
    

