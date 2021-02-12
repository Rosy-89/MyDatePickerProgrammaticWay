//
//  ViewController.swift
//  MyDatePickerProgrammaticWay
//
//  Created by Alok Kumar Naik on 10/02/2021.
//

import UIKit
import Foundation

class ViewController: UIViewController{
    
    @IBOutlet weak var mytextField: UITextField!
    @IBOutlet weak var ourLabel: UILabel!
   
    
    //created a DatePickerObject
    //var myDatePicker: UIDatePicker = UIDatePicker()
    //converts string representstion of date
    //var dateFormater = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mytextField.setInputViewDatePicker(target: self, selector: #selector(tapDone))
        
//        //adding DatePicker to the view
//        self.view.addSubview(myDatePicker)
//        myDatePicker.preferredDatePickerStyle = .wheels
//        myDatePicker.center = self.view.center
//
//        dateFormater.dateFormat = "dd/MM/yyyy"
//        myDatePicker.datePickerMode = .date
//        ourLabel.text = dateFormater.string(from: myDatePicker.date)
//        datePickerTapped(myDatePicker)
//
//        //ourLabel.text = myDatePicker
    }
//    func datePickerTapped( _ sender: UIDatePicker){
//
//        ourLabel.text = dateFormater.string(from: myDatePicker.date)
//    }
    @objc func tapDone(){
        if let datePicker = self.mytextField.inputView as? UIDatePicker{
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
            self.mytextField.text = dateFormatter.string(from: datePicker.date)
        }
        self.mytextField.resignFirstResponder()
    }
    
}

