//
//  ViewController.swift
//  Hypotecni Kalkulacka
//
//  Created by Daryna Polevyk on 22/05/2021.
//

import UIKit

class ViewController: UIViewController {


    
    @IBOutlet weak var amountOfLoan: UITextField!
    @IBOutlet weak var numberOfYears: UITextField!
    @IBOutlet weak var perCent: UITextField!
    @IBOutlet weak var monthPlatba: UILabel!
    
    
    var amount: Float?
    var number: Float?
    var perce: Float?
    var monthPay: Float?
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }

    
    @IBAction func button(_ sender: UIButton) {
    
        
        guard let amountText = amountOfLoan.text else {return}
        guard let floatAmountText = Float(amountText) else {return}
        
        guard let numberText = numberOfYears.text else {return}
        guard let floatNumberText = Float(numberText) else {return}
        
        guard let perCent = perCent.text else {return}
        guard let floatPerCentText = Float(perCent) else {return}
        

        amount = floatAmountText
        number = floatNumberText
        perce = floatPerCentText
        
        print(amount, number, perce)
        //month_pay = (amount * pct * (1 + pct)**years) / (12 * ((1 + pct)**years - 1))
        let onePer = 1 + perce!
        let a = pow (onePer, number!)
        
        let numMinusOne = number! - 1
        let b = pow (onePer, numMinusOne)
        
       
        monthPay = (amount! * perce! * a) / (12 * b)
        
        print(monthPay)
        
    }
    


}
