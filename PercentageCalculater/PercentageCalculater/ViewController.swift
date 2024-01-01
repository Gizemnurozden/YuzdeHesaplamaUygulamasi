//
//  ViewController.swift
//  PercentageCalculater
//
//  Created by Gizemnur Özden on 28.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var numbertext1: UITextField!
    @IBOutlet weak var numbertext2: UITextField!
    @IBOutlet weak var layelText: UILabel!
    
    var result = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func hesaplaClicked(_ sender: Any) {
        
        
    }
    
    
    @IBAction func yuzdeClicked(_ sender: Any) {
        guard let firstNumber = Int( numbertext1.text!) else { return }
        guard let secondNumber = Int (numbertext2.text!) else { return  }
        let result = calculatePercentage(value: Double(firstNumber), percentageVal: Double(secondNumber))
        print("yazdırıldı")
        layelText.text = String(result)
    }
    
    public func calculatePercentage( value: Double, percentageVal : Double)-> Double {
        let val = value * percentageVal
        return val / 100.0
        
    }
}
