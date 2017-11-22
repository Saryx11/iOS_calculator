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
    @IBOutlet weak var equalButton: UIButton!
    var firstOperand: Int = 0
    var operation: String = ""
    var secondOperand: Int = 0
    var isResult: Bool = false

    @IBAction func didPressButton(_ sender: Any) {
        guard let button = sender as? UIButton else {
            return
        }
        guard let buttonText = button.titleLabel?.text else {
            return
        }
        guard let text = resultLabel.text else {
            return
        }
        if isResult {
            resultLabel.text=buttonText
            isResult = false
        } else {
            resultLabel.text = text + buttonText
        }
    }

    @IBAction func didPressPlus(_ sender: Any) {
        guard let button = sender as? UIButton else {
            return
        }
        guard let text = resultLabel.text else {
            return
        }
        if operationLabel.text != ""{
            self.didPressEqual(sender)
        } else {
            firstOperand = Int(text.trimmingCharacters(in: .whitespaces)) ?? 0

        }
        isResult = true
        operationLabel.text = button.titleLabel?.text
        operation = button.titleLabel?.text ?? ""
    }

    @IBAction func didPressMinus(_ sender: Any) {
        guard let button = sender as? UIButton else {
            return
        }
        operationLabel.text = button.titleLabel?.text
    }

    @IBAction func didPressMultiply(_ sender: Any) {
        guard let button = sender as? UIButton else {
            return
        }
        operationLabel.text = button.titleLabel?.text
    }

    @IBAction func didPressDivide(_ sender: Any) {
        guard let button = sender as? UIButton else {
            return
        }
        operationLabel.text = button.titleLabel?.text
    }

    @IBAction func didPressClear(_ sender: Any) {
        resultLabel.text = ""
        operationLabel.text = ""
        var s: String!
        s.removeAll()
    }

    @IBAction func didPressEqual(_ sender: Any) {
        guard let secondOperandText = resultLabel.text else {
            return
        }
        secondOperand = Int(secondOperandText) ?? 0

        switch operation {
        case "+":
            resultLabel.text = "\(firstOperand + secondOperand)"
            operationLabel.text = ""
            operation = ""
            firstOperand += secondOperand
            isResult = true
        default:
            operationLabel.text = ""
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let env = Bundle.main.infoDictionary!["equal color"] as! String // swiftlint:disable:this force_cast
        if env == "blue"{
            equalButton.backgroundColor = UIColor.blue
        } else {
            equalButton.backgroundColor = UIColor.red
        }
        // Do any additional setup after loading the view, typically from a nib.
        self.resultLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
