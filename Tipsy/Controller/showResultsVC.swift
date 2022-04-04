//
//  showResultsVC.swift
//  Tipsy
//
//  Created by Marco Mascorro on 4/4/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class showResultsVC: UIViewController {
    
    var total: Float = 0.0
    var splitBy: Int = 2
    var percentage: String = "10%"
    var tipDetail: String = ""
    
    

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var totalDetails: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = "\(round(total * 100) / 100.0)"
        totalDetails.text = "Split between \(splitBy) people\(tipDetail)"
        
    }
    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
}
