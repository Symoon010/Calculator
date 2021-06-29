//
//  ViewController.swift
//  Calculator
//
//  Created by BS-125 on 27/6/21.
//

import UIKit

class ViewController: UIViewController {
    var Screennumber:Double = 0;
    var Previousnumber:Double = 0;
    var flag = false ;
    @IBOutlet weak var Outputlabel: UILabel!
    
    @IBAction func Numbersbutton(_ sender: UIButton)
    {
        if(flag == true)
        {
            Outputlabel.text = String(sender.tag)
            Screennumber = Double(Outputlabel.text!)!
            flag = false
        }
        else
        {
        Outputlabel.text = Outputlabel.text! + String(sender.tag)
        Screennumber = Double(Outputlabel.text!)!
        }
    }
    
    @IBAction func Signbutton(_ sender: UIButton) {
        
        if (Outputlabel.text != "" && sender.tag != 11 && sender.tag != 12 &&  sender.tag != 17) //ignore Ac, Dot, Equal
        {
          
            if(sender.tag == 13) // Divide
            {
                
            }
            else if(sender.tag == 14) //Multiply
            
            {
                
            }
            else if(sender.tag == 15) //Subtract
            {
                
            }
            else if(sender.tag == 16) //Add
            {
                
            }
            flag = true ;
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

