//
//  ViewController.swift
//  Hypotecni Kalkulacka
//
//  Created by Daryna Polevyk on 22/05/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceOfHouse: UITextField!
    @IBOutlet weak var amountOfLoan: UITextField!
    @IBOutlet weak var numberOfYears: UITextField!
    @IBOutlet weak var perCent: UITextField!
    
    
    var price: Float?
    var amount: Float?
    var number: Float?
    var perce: Float?
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }

    
    @IBAction func button(_ sender: UIButton) {
        guard let priceText = priceOfHouse.text else {return}
        guard let floatPriceText = Float(priceText) else {return}
        
        guard let amountText = amountOfLoan.text else {return}
        guard let floatAmountText = Float(amountText) else {return}
        
        guard let numberText = numberOfYears.text else {return}
        guard let floatNumberText = Float(numberText) else {return}
        
        guard let perCent = perCent.text else {return}
        guard let floatPerCentText = Float(perCent) else {return}
        
        price = floatPriceText
        amount = floatAmountText
        number = floatNumberText
        perce = floatPerCentText
        
        print(price, amount, number, perce)
        
    }
    
    
}

