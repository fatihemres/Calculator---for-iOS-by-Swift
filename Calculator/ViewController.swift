//
//  ViewController.swift
//  Calculator
//
//  Created by Fatih Emre Sarman on 24.01.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!

    private enum Operation {
        case add
        case subtract
        case multiply
        case divide
    }

    @IBAction func sumClick(_ sender: Any) {
        calculate(.add)
    }

    @IBAction func minusClick(_ sender: Any) {
        calculate(.subtract)
    }

    @IBAction func multiplyClick(_ sender: Any) {
        calculate(.multiply)
    }

    @IBAction func divideClick(_ sender: Any) {
        calculate(.divide)
    }

    private func calculate(_ operation: Operation) {
        guard
            let first = Int(firstText.text ?? ""),
            let second = Int(secondText.text ?? "")
        else {
            resultLabel.text = "Enter valid whole numbers"
            return
        }

        let outcome: (partialValue: Int, overflow: Bool)

        switch operation {
        case .add:
            outcome = first.addingReportingOverflow(second)
        case .subtract:
            outcome = first.subtractingReportingOverflow(second)
        case .multiply:
            outcome = first.multipliedReportingOverflow(by: second)
        case .divide:
            guard second != 0 else {
                resultLabel.text = "Cannot divide by zero"
                return
            }
            outcome = first.dividedReportingOverflow(by: second)
        }

        guard !outcome.overflow else {
            resultLabel.text = "Result is out of range"
            return
        }

        resultLabel.text = String(outcome.partialValue)
    }
}
