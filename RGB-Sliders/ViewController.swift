//
//  ViewController.swift
//  RGB-Sliders
//
//  Created by Daniel Cleaves on 9/14/16.
//  Copyright © 2016 Daniel Cleaves. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var colorSquare: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         // Do any additional setup after loading the view, typically from a nib.
        
        updateBackgroundColor()
        
        colorSquare.layer.borderColor = UIColor.blackColor().CGColor
        colorSquare.layer.borderWidth = 1
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func updateBackgroundColor() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        colorSquare.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
    }

}

