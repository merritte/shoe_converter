//
//  ViewController.swift
//  shoeConverter
//
//  Created by Merritte on 9/23/14.
//  Copyright (c) 2014 Merritte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    
    @IBAction func convertButtonPressed(sender: UIButton) {
        
        let sizeFromMeTextField = mensShoeSizeTextField.text.toInt()!
        let conversionContstant = 30
        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text = "\(sizeFromMeTextField + conversionContstant)" + " in Eurpoean Shoe Size"

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func convertWomensShoeSizeAction(sender: UIButton) {
        let sizeFromWoTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text = "\(sizeFromWoTextField + conversionConstant)" + " in European Shoe Size"
    }
}


/* 
    @IBAction func convertButtonPressed(sender: UIButton) {
    let sizeFromTextField = mensShoeSizeTextField.text
    let numberFromTextField = sizeFromTextField.toInt()
    var integerFromTextField = numberFromTextField!
    let conversionContstant = 30
    integerFromTextField += conversionContstant
    mensConvertedShoeSizeLabel.hidden = false
    let stringWithUpdatedShoeSize = "\(integerFromTextField)" + " in Eurpoean Shoe Size"
    mensConvertedShoeSizeLabel.text = stringWithUpdatedShoeSize
    
}
*/
