//
//  Brain.swift
//  Tipsy
//
//  Created by Marco Mascorro on 4/3/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation


struct Brain {
    
    func getPercentage(total: Float, percentage: String, splitBy: Int) -> Float{
        
        var amount: Float
        var tipAmount: Float
        var finalAmouunt: Float
        
        if percentage == "20%"{
            tipAmount = total * 0.2
            print(tipAmount, "tip Amount")
           amount = total + tipAmount
            print(amount, "amount")
           finalAmouunt = amount / Float(splitBy)
            print(finalAmouunt, "Final Amount")
            
        } else if percentage == "10%"{
            tipAmount = total * 0.1
            print(tipAmount, "tip Amount")
            amount = total + tipAmount
            print(amount, "amount")
            finalAmouunt = amount / Float(splitBy)
            print(finalAmouunt, "Final Amount")
        } else {
            amount = total
            print(amount, "amount")
            finalAmouunt = amount / Float(splitBy)
            print(finalAmouunt, "Final Amount")
        }
        
        return finalAmouunt
    }
    
    func getPercentageDetail(percentage: String) -> String {
        
        if percentage == "10%" || percentage == "20%" {
            return ", with a \(percentage) of tip."
        } else {
            return ", with no tip."
        }
    }
    
}
