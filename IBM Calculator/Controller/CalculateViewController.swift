//
//  ViewController.swift
//  IBM Calculator
//
//  Created by Yusuf Bayindir on 1/29/24.
//

import UIKit

class CalculateViewController: UIViewController {
    var bmi:Bmi?
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlide: UISlider!
    @IBOutlet weak var weightSlide: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heightLabel.text = "\(String(format: "%.2f", heightSlide.value))m"
        weightLabel.text = "\(String(format: "%.0f", weightSlide.value))kg"
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        heightLabel.text = "\(String(format: "%.2f", sender.value))m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        weightLabel.text = "\(String(format: "%.0f", sender.value))kg"
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        bmi = Bmi(height: Float(String(heightLabel.text!.dropLast()))!, weight: Float(String(weightLabel.text!.dropLast(2)))!)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destination = segue.destination as! ResultViewController
            destination.bmi = bmi?.getBmiValue()
            destination.advice = bmi?.getAdvice()
            destination.color = bmi?.getColor()
        }
    }
}

