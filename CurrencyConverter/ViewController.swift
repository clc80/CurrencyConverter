//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Claudia Contreras on 9/17/18.
//  Copyright © 2018 thecoderpilot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usDollarsLbl: UILabel!
    @IBOutlet weak var mexicoPesosLbl: UILabel!
    @IBOutlet weak var clearBtn: UIButton!
    
    var numberButtons = [UIButton]()
    var currencyToConvert:Double = 0
    var currencyConverted:Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func clearBtnTapped(_ sender: UIButton) {
        currencyToConvert = 0
        currencyConverted = 0
        self.mexicoPesosLbl.text = "0"
        self.usDollarsLbl.text = "0"
    }

    @IBAction func btn1Tapped(_ sender: UIButton) {
        if usDollarsLbl.text == "0" {
            usDollarsLbl.text = "1"
        } else {
            usDollarsLbl.text = usDollarsLbl.text! + "1"
        }
        calculate()
    }
    @IBAction func btn2Tapped(_ sender: UIButton) {
        if usDollarsLbl.text == "0" {
            usDollarsLbl.text = "2"
        } else {
            usDollarsLbl.text = usDollarsLbl.text! + "2"
        }
        calculate()
    }
    @IBAction func btn3Tapped(_ sender: UIButton) {
        if usDollarsLbl.text == "0" {
            usDollarsLbl.text = "3"
        } else {
            usDollarsLbl.text = usDollarsLbl.text! + "3"
        }
        calculate()
    }
    @IBAction func btn4Tapped(_ sender: UIButton) {
        if usDollarsLbl.text == "0" {
            usDollarsLbl.text = "4"
        } else {
            usDollarsLbl.text = usDollarsLbl.text! + "4"
        }
        calculate()
    }
    @IBAction func btn5Tapped(_ sender: UIButton) {
        if usDollarsLbl.text == "0" {
            usDollarsLbl.text = "5"
        } else {
            usDollarsLbl.text = usDollarsLbl.text! + "5"
        }
        calculate()
    }
    @IBAction func btn6Tapped(_ sender: UIButton) {
        if usDollarsLbl.text == "0" {
            usDollarsLbl.text = "6"
        } else {
            usDollarsLbl.text = usDollarsLbl.text! + "6"
        }
        calculate()
    }
    @IBAction func btn7Tapped(_ sender: UIButton) {
        if usDollarsLbl.text == "0" {
            usDollarsLbl.text = "7"
        } else {
            usDollarsLbl.text = usDollarsLbl.text! + "7"
        }
        calculate()
    }
    @IBAction func btn8Tapped(_ sender: UIButton) {
        if usDollarsLbl.text == "0" {
            usDollarsLbl.text = "8"
        } else {
            usDollarsLbl.text = usDollarsLbl.text! + "8"
        }
        calculate()
    }
    @IBAction func btn9Tapped(_ sender: UIButton) {
        if usDollarsLbl.text == "0" {
            usDollarsLbl.text = "9"
        } else {
            usDollarsLbl.text = usDollarsLbl.text! + "9"
        }
        calculate()
    }
    @IBAction func btn0Tapped(_ sender: UIButton) {
        usDollarsLbl.text = usDollarsLbl.text! + "0"
        calculate()
    }
    @IBAction func btnDotTapped(_ sender: UIButton) {
        usDollarsLbl.text = usDollarsLbl.text! + "."
        calculate()
    }
    
    func calculate() {
        currencyToConvert = ((usDollarsLbl.text! as NSString).doubleValue)
        currencyConverted = (currencyToConvert * 18.79)
        
        //update UI
        self.mexicoPesosLbl.text = String(format: "%.2f", currencyConverted)
    }

}

