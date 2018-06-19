//
//  ViewController.swift
//  Counter
//
//  Created by Alton Henley on 6/19/18.
//  Copyright © 2018 Alton Henley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentNumber = 0
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var justNumberLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.text = String(currentNumber)
        justNumberLabel.text = String(currentNumber)
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func nextNumber(_ sender: Any) {
        var mess:String = ""
        currentNumber += 1
        if currentNumber % 3 == 0 && currentNumber % 5 == 0 {
            mess = "FizzBuzz"
        } else if currentNumber % 3 == 0 {
            mess = "Fizz"
        } else if currentNumber % 5 == 0 {
            mess = "Buzz"
        } else {
            mess = String(currentNumber)
        }
        myLabel.text = mess
        justNumberLabel.text = String(currentNumber)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

