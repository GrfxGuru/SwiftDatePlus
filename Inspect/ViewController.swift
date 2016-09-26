//
//  ViewController.swift
//  Inspect
//
//  Created by Peter Witham on 9/25/16.
//  Copyright © 2016 Peter Witham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myDatePicker: UIDatePicker!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myStepperValue: UIStepper!
    @IBOutlet weak var myStepperDisplay: UILabel!
    
    @IBAction func myStepper(_ sender: UIStepper) {
        myStepperDisplay.text = String(Int(myStepperValue.value))
        displayNewDate()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myStepperDisplay.text = "0"
        myLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func myDatePickerChanged(_ sender: AnyObject) {
        displayNewDate()
    }
    
    func displayNewDate() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd-YYYY"
        let calculatedDate = myDatePicker.date.addingTimeInterval(60*60*24*myStepperValue.value)
        let strDate = dateFormatter.string(from: calculatedDate)
        myLabel.text = strDate
    }
}

