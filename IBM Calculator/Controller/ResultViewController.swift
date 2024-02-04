//
//  ResultViewController.swift
//  IBM Calculator
//
//  Created by Yusuf Bayindir on 1/29/24.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var upperlabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    var advice:String?
    var bmi:Float?
    var color:UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()
        upperlabel.text = String(bmi ?? 0.0)
        bottomLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
   
}
