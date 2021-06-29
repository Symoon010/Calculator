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
    var Operation = 0;
    var flag = false ;
    @IBOutlet weak var Outputlabel: UILabel!
    
    @IBAction func Numbersbutton(_ sender: UIButton)
    {
        if(flag == true)
        {
            Outputlabel.text = String(sender.tag)
            Screennumber = Double(Outputlabel.text!)!
            flag = false;
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
            Previousnumber = Double(Outputlabel.text!)!
          
            if(sender.tag == 13) // Divide
            {
                Outputlabel.text = "/";
            }
            else if(sender.tag == 14) //Multiply
            
            {
                Outputlabel.text = "*";
            }
            else if(sender.tag == 15) //Subtract
            {
                Outputlabel.text = "-";
            }
            else if(sender.tag == 16) //Add
            {
                Outputlabel.text = "+";
            }
            flag = true ;
            Operation = sender.tag;
        }
        
        else if (sender.tag == 17)
        {
            if(Operation == 13)
             {
                Outputlabel.text = String(Previousnumber / Screennumber)
             }
            if(Operation == 14)
            {
                Outputlabel.text = String(Previousnumber * Screennumber)
            }
            if(Operation == 15)
            {
                Outputlabel.text = String(Previousnumber - Screennumber)
            }
            if(Operation == 16)
            {
                Outputlabel.text = String(Previousnumber + Screennumber)
            }
            
        }
        
        else if(sender.tag == 11)
        {
            Previousnumber = 0;
            Outputlabel.text = "";
            Screennumber = 0;
            Operation = 0;
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

