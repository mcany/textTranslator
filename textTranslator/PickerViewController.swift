//
//  PickerViewController.swift
//  textTranslator
//
//  Created by Mertcan Yigin on 22/09/15.
//  Copyright © 2015 Mertcan Yigin. All rights reserved.
//

import UIKit
import Foundation

extension ViewController: UIPickerViewDataSource,UIPickerViewDelegate{
    
    
    //MARK: - PickerView Delegates and data sources
    //MARK: Data Sources
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.pickerData.count
    }
    
    //MARK: Delegates
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.pickerData[row].description
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.targetLanguage = self.pickerData[row].rawValue
    }
}