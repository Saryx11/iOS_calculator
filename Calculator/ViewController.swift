//
//  ViewController.swift
//  Calculator
//
//  Created by Benjamin LOUIS on 23/10/2017.
//  Copyright © 2017 Benjamin LOUIS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var operationLabel: UILabel!
    var firstOperand: Int = 0
    var operation: String = ""
    var secondOperand: Int = 0
    
    @IBAction func didPressButton(_ sender: Any) {
        guard let button = sender as? UIButton else{
            return
        }
        guard let buttonText = button.titleLabel?.text else{
            return
        }
        guard let text = resultLabel.text else{
            return
        }
        resultLabel.text = text + buttonText
    }
    
    @IBAction func didPressPlus(_ sender: Any) {
        guard let button = sender as? UIButton else{
            return
        }
        guard let text = resultLabel.text else{
            return
        }
        firstOperand = Int(text) ?? 0
        resultLabel.text = "0"
        operationLabel.text = button.titleLabel?.text
        operation = button.titleLabel?.text ?? ""
    }
    
    @IBAction func didPressMinus(_ sender: Any) {
        guard let button = sender as? UIButton else{
            return
        }
        operationLabel.text = button.titleLabel?.text
    }
    
    @IBAction func didPressMultiply(_ sender: Any) {
        guard let button = sender as? UIButton else{
            return
        }
        operationLabel.text = button.titleLabel?.text
    }
    
    @IBAction func didPressDivide(_ sender: Any) {
        guard let button = sender as? UIButton else{
            return
        }
        operationLabel.text = button.titleLabel?.text
    }
    
    @IBAction func didPressClear(_ sender: Any) {
        resultLabel.text = ""
        operationLabel.text = ""
    }
    
    @IBAction func didPressEqual(_ sender: Any) {
        guard let secondOperandText = resultLabel.text else{
            return
        }
        secondOperand = Int(secondOperandText) ?? 0
        
        switch operation{
            case "+":
                    resultLabel.text = "\(firstOperand + secondOperand)"
                    operationLabel.text = ""
        default:
            operationLabel.text = ""
            }
            
        }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.resultLabel.text = " "
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
       

    
    
    
}

