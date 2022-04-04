//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let brain =  Brain()
    var splitNumber: Int = 2
    var total: Float?
    var percentage = ""
    var splitTotal : Float = 0.0

    @IBOutlet weak var totalField: UITextField!
    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var zeroPercentLabel: UIButton!
    @IBOutlet weak var tenPercentLabel: UIButton!
    @IBOutlet weak var twentyPercentLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        splitLabel.text = "\(splitNumber)"
    }

    @IBAction func percentagePressed(_ sender: UIButton) {
        
        zeroPercentLabel.isSelected = false
        tenPercentLabel.isSelected = false
        twentyPercentLabel.isSelected = false
        sender.isSelected = true
        
        percentage = sender.currentTitle!
        
    }
    @IBAction func stepperPressed(_ sender: UIStepper) {
       let value = sender.value
       splitNumber = Int(value)
       splitLabel.text = "\(splitNumber)"
    }
    @IBAction func CalculatePressed(_ sender: UIButton) {
        total = Float(totalField.text!)
        if let safeOptional = total {
            let total: Float = safeOptional
            splitTotal = brain.getPercentage(total: total, percentage: percentage, splitBy: splitNumber)
        }
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! showResultsVC
            destinationVC.percentage = percentage
            destinationVC.splitBy = splitNumber
            destinationVC.total = splitTotal
            destinationVC.tipDetail = brain.getPercentageDetail(percentage: percentage)
        }
        
    }
    
}

