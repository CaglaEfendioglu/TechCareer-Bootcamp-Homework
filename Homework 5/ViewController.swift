//
//  ViewController.swift
//  Calculator
//
//  Created by Cagla Efendioglu on 4.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelFirst: UILabel!
    @IBOutlet weak var labelSecond: UILabel!
    @IBOutlet weak var labelThird: UILabel!
    
    var labelNumber = ""
    var textNumber = ""
    var numberResult = "0"
    
    func labelTextNumber (number:String) {
        if labelSecond.text == ""  || labelSecond.text == nil {
            textNumber += labelNumber
            labelFirst.text = textNumber
        }else{
            if labelThird.text == "" || labelThird.text == nil {
                textNumber = labelNumber
                labelThird.text = textNumber
            }else{
                textNumber += labelNumber
                labelThird.text = textNumber
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
   }
    
    @IBAction func buttonClear(_ sender: Any) {
        labelFirst.text = "0"
        labelSecond.text?.removeAll()
        labelThird.text?.removeAll()
        textNumber.removeAll()
   }
    
    @IBAction func buttonPlus(_ sender: Any) {
        labelSecond.text = "+"
   }
    
    @IBAction func buttonEqual(_ sender: Any) {
        if let first = Int(labelFirst.text!) , let second = Int(labelThird.text!){
            let numberResult = first + second
            let resultInt = Int(numberResult)
            labelFirst.text = "\(resultInt)"
        }
        labelSecond.text?.removeAll()
        labelThird.text?.removeAll()
        textNumber.removeAll()
    }
    
    @IBAction func buttonZero(_ sender: Any){
        labelNumber = "0"
        labelTextNumber(number: labelNumber)
  }
    
    @IBAction func buttonOne(_ sender: Any){
        labelNumber = "1"
        labelTextNumber(number: labelNumber)
  }
    
    @IBAction func buttonTwo(_ sender: Any){
        labelNumber = "2"
        labelTextNumber(number: labelNumber)
  }
    @IBAction func buttonThree(_ sender: Any){
        labelNumber = "3"
        labelTextNumber(number: labelNumber)
  }
    @IBAction func buttonFour(_ sender: Any){
        labelNumber = "4"
        labelTextNumber(number: labelNumber)
  }
    @IBAction func buttonFive(_ sender: Any){
        labelNumber = "5"
        labelTextNumber(number: labelNumber)
  }
    @IBAction func buttonSix(_ sender: Any){
        labelNumber = "6"
        labelTextNumber(number: labelNumber)
  }
    @IBAction func buttonSeven(_ sender: Any){
        labelNumber = "7"
        labelTextNumber(number: labelNumber)
  }
    @IBAction func buttonEight(_ sender: Any){
        labelNumber = "8"
        labelTextNumber(number: labelNumber)
  }
    @IBAction func buttonNine(_ sender: Any){
        labelNumber = "9"
        labelTextNumber(number: labelNumber)
  }
}

