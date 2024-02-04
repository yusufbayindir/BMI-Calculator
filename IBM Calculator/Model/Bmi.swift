//
//  Bmi.swift
//  IBM Calculator
//
//  Created by Yusuf Bayindir on 1/29/24.
//

import UIKit

class Bmi {
    private var bmi:Float
    private var advice:String
    private var color:UIColor
    private var height:Float
    private var weight:Float
    init(height:Float, weight:Float) {
        self.height = height
        self.weight = weight
        bmi = weight / pow(height, 2)
        if bmi < 18.5 {
            advice = "You need to eat snacks"
            color = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        }else if bmi < 24.9{
            advice = "You are okey"
            color = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        }else if bmi < 29.9{
            advice = "You need loose some weights, you can do it"
            color = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        }else if bmi < 39.9{
            advice = "You need to loose weight. It is important"
            color = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
        }else{
            advice = "You need to loose weight. It is an emergency..."
            color = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        }
    }
    func getBmiValue()->Float{
        return bmi
    }
    func getAdvice() -> String {
        return advice
    }
    func getColor() -> UIColor {
        return color
    }
}
