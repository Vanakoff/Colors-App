//
//  ViewController.swift
//  Colors App
//
//  Created by Andrey Vanakoff on 19/08/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultColorView: UIView!
    
    @IBOutlet var redLabelValue: UILabel!
    @IBOutlet var greenLabelValue: UILabel!
    @IBOutlet var blueLabelValue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultColorView.layer.cornerRadius = 10
        updateBackgroundColor()
    }

    @IBAction func redSliderAction() {
        redLabelValue.text = String(format: "%.2f", redSlider.value)
    }
    
    @IBAction func greenSliderAction() {
        greenLabelValue.text = String(format: "%.2f", greenSlider.value)
    }
    
    @IBAction func blueSliderAction() {
        blueLabelValue.text = String(format: "%.2f", blueSlider.value)
    }
    
    @IBAction func updateBackgroundColor() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        resultColorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
}
