//
//  ViewController.swift
//  Task2
//
//  Created by ちいつんしん on 2021/05/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var textField1: UITextField!

    @IBOutlet private weak var textField2: UITextField!

    @IBOutlet private weak var mark: UISegmentedControl!

    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction private func calculate(_ sender: Any) {

        let num1 = Double(textField1.text ?? "") ?? 0.0
        let num2 = Double(textField2.text ?? "") ?? 0.0

        let resultText: String

        switch mark.selectedSegmentIndex {
        case 0:
            resultText = String(num1 + num2)
        case 1:
            resultText = String(num1 - num2)
        case 2:
            resultText = String(num1 * num2)
        case 3:
            if num2 == 0 {
                resultText = "割る数には0以外を入力して下さい"
            } else {
                resultText = String(num1 / num2)
            }
        default:
            return
        }

        resultLabel.text = "\(resultText)"
    }
}
