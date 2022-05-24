//
//  Calculator - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mathematicalExpressionStackView: UIStackView!
    @IBOutlet weak var operatorLabel: UILabel!
    @IBOutlet weak var operandLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func acButtonAction(_ sender: UIButton) {
        mathematicalExpressionStackView.subviews.forEach { $0.removeFromSuperview() }
        operandLabel.text = "0"
        operatorLabel.text = ""
    }
    
    @IBAction func ceButtonAction(_ sender: Any) {
    }
    
    @IBAction func switchSignButton(_ sender: UIButton) {
    }
    
    @IBAction func operatorsButtonAction(_ sender: Any) {
    }
    
    @IBAction func operandsButtonAction(_ sender: Any) {
    }
    
    @IBAction func calculateButtonAction(_ sender: Any) {
    }
    
}

