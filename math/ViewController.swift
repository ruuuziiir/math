//
//  ViewController.swift
//  math
//
//  Created by 7 on 2020/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberOne: UITextField!
    @IBOutlet weak var numberTwo: UITextField!
    @IBOutlet weak var mathSeg: UISegmentedControl!
    @IBOutlet weak var answer: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        answer.text = ""
    }

    
    @IBAction func run(_ sender: Any) {
        
        let one = numberOne.text!
        let two = numberTwo.text!
        
        let numOne = Double(one)
        let numTwo = Double(two)
        
        if numOne != 0, numTwo != 0 {
            
            if mathSeg.selectedSegmentIndex == 0 {
                
                let sum = numOne! + numTwo!
                answer.text = "\(sum)"
                
            } else if mathSeg.selectedSegmentIndex == 1 {
                
                let sum = numOne! - numTwo!
                answer.text = "\(sum)"
                
            } else if mathSeg.selectedSegmentIndex == 2 {
                
                let sum = numOne! * numTwo!
                answer.text = "\(sum)"
                
            } else {
                
                let sum = numOne! / numTwo!
                answer.text = String(format: "%.2f", sum)
                
            }
            
        }
        
    }
        
    @IBAction func erase(_ sender: Any) {
        
        numberOne.text = ""
        numberTwo.text = ""
        answer.text = ""
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    self.view.endEditing(true)
    }
    
}

