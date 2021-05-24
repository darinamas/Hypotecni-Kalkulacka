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
    
    
    var amount: Double?
    var number: Double?
    var perce: Double?
    var monthPay: Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        monthPlatba.isHidden = true
   
    }

    
    @IBAction func button(_ sender: UIButton) {
    
        
        guard let amountText = amountOfLoan.text else {return}
        guard let floatAmountText = Double(amountText) else {return}
        
        guard let numberText = numberOfYears.text else {return}
        guard let floatNumberText = Double(numberText) else {return}
        
        guard let perCent = perCent.text else {return}
        guard let floatPerCentText = Double(perCent) else {return}
        
        amount = floatAmountText
        number = floatNumberText * 12 //t
        perce = floatPerCentText /  (12 * 100) // one month interest

       
        let result =  EMI(amount: amount!, number: number!, perce: perce!)
        monthPlatba.isHidden = false
        monthPlatba.text = result + " Kč"
    }

    
    func EMI(amount: Double, number: Double, perce: Double) -> String {
        print(amount, number, perce)
        let onePer = 1 + perce
        let a = pow (onePer, number)

        monthPay = (amount * perce * (a / (a - 1)))
        
        let array = String(monthPay!).split(separator: ".")
        let result = String(array[0])
        
        return result
    }


}
