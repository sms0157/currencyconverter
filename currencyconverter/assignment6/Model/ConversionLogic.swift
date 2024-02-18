//
//  ConversionLogic.swift
//  assignment6
//
//  Created by Sabrina Summerfield on 2/17/24.
//

import Foundation
struct ConversionLogic {
    
    //conversions
    var euro = 0.928
    var cad = 1.349
    var jpy = 150.224
    var mxn = 17.059
    
    var EUROSwitch = true
    var CADSwitch = true
    var JPYSwitch = true
    var MXNSwitch = true
    
    
    func convertEuro(_ userInput: String) -> String {
        let characterset = CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: userInput))
        if userInput != "" && characterset {
            let usd = Double(userInput)!
            let value = usd * Double(euro)
            let currencyformat = String(format: "%.2f", value)
            return currencyformat
        } else {
            return "number required"
        }
    }

    func convertCAD(_ userInput: String) -> String {
        let characterset = CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: userInput))
        if userInput != "" && characterset {
            let usd = Double(userInput)!
            let value = usd * Double(cad)
            let currencyformat = String(format: "%.2f", value)
            return currencyformat
        } else {
            return "number required"
        }
    }

    func convertJPY(_ userInput: String) -> String {
        let characterset = CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: userInput))
        if userInput != "" && characterset {
            let usd = Double(userInput)!
            let value = usd * Double(jpy)
            let currencyformat = String(format: "%.2f", value)
            return currencyformat
        } else {
            return "number required"
        }
    }

    func convertMXN(_ userInput: String) -> String {
        let characterset = CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: userInput))
        if userInput != "" && characterset {
            let usd = Double(userInput)!
            let value = usd * Double(mxn)
            let currencyformat = String(format: "%.2f", value)
            return currencyformat
        } else {
            return "number required"
        }
    }
         
    
    mutating func setEURO(_ switchValue: Bool) {
           if switchValue {
               EUROSwitch = true
           } else {
               EUROSwitch = false
           }
       }
       
       mutating func setCAD(_ switchValue: Bool) {
           if switchValue {
               CADSwitch = true
           } else {
               CADSwitch = false
           }
       }
       
       mutating func setJPY(_ switchValue: Bool) {
           if switchValue {
               JPYSwitch = true
           } else {
               JPYSwitch = false
           }
       }
       
       mutating func setMXN(_ switchValue: Bool) {
           if switchValue {
               MXNSwitch = true
           } else {
               MXNSwitch = false
           }
       }

      
}
