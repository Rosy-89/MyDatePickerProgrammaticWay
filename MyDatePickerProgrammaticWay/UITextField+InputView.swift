//
//  UITextField+InputView.swift
//  MyDatePickerProgrammaticWay
//
//  Created by Alok Kumar Naik on 12/02/2021.
//
import UIKit
import Foundation

extension UITextField{
    
    func setInputViewDatePicker(target: Any, selector: Selector){
        
        //create a UIDatePicker object and assign to inputView
        let screenWidth = UIScreen.main.bounds.width
        let datePicker = UIDatePicker(frame: CGRect(x: 0, y: 0, width: screenWidth, height: 216))
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.sizeToFit()
        //custom input view to display when the text field becomes the first responder.
        self.inputView = datePicker
        
        //create a toolbar
        let toolbar = UIToolbar(frame: CGRect(x: 0.0, y: 0.0, width: screenWidth, height: 44.0))
        //create UIBarButtonItem of type flexibleSpace to fill the gap between the bar button items
        let flexible = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancel = UIBarButtonItem(title: "Cancel", style: .plain, target: nil, action: #selector(tapCancel))
        let done = UIBarButtonItem(title: "Done", style: .plain, target: target, action: selector)
        toolbar.setItems([cancel, flexible, done], animated: false)
        self.inputAccessoryView = toolbar
        
    }
    @objc func tapCancel(){
        self.resignFirstResponder()
    }
}
