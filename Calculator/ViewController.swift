//
//  ViewController.swift
//  Calculator
//
//  Created by Usuário Convidado on 28/01/16.
//  Copyright © 2016 Usuário Convidado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var calcOp:CalcOperation = CalcOperation()
    var arrItens:[String] = [String]()

    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTap(sender: UIButton) {
        if (sender.titleLabel!.text == "CA") {
            self.resultLabel.text = ""
        } else {
            self.resultLabel.text = self.resultLabel.text! + sender.titleLabel!.text!
            self.arrItens.append(sender.titleLabel!.text!)
        }
    }

    @IBAction func buttonCalc(sender: UIButton) {
        let result: Double = self.calcOp.calculateWithArray(self.arrItens)
        self.resultLabel.text = "\(result)"
        self.arrItens.removeAll(keepCapacity: false)
    }
}

