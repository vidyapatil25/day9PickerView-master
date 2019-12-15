//
//  ViewController.swift
//  day9PickerView
//
//  Created by Felix-ITS016 on 27/11/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate
{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        
       // return colors.count
       if component == 0
        {
            return colors.count
        }
        else
        {
            return days.count
            
        }
      
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {

        print("You Selected \(colors[row]) color")
      
        switch colors[row]{
        case "Red":
            view.backgroundColor = .red
        case"Blue":
             view.backgroundColor = .blue
        case "Green":
             view.backgroundColor = .green
        case"Yellow":
             view.backgroundColor = .yellow
        case"Black":
             view.backgroundColor = .black
        default:""
        }
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        
        let title1 =  colors[row]
        let title2 = days[row]
        title = title1+title2
        //return title1
        return title
        
    }
    
    var days = ["Monady","Sunday","Tuesday","saturday","Friday"]
    
    var colors = ["Red","Blue","Green","Yellow","Black"]
    
    
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        pickerView.dataSource = self
        pickerView.delegate = self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

