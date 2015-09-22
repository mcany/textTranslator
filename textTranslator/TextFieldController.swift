//
//  TextFieldController.swift
//  textTranslator
//
//  Created by Mertcan Yigin on 22/09/15.
//  Copyright © 2015 Mertcan Yigin. All rights reserved.
//


import Foundation
import UIKit


extension ViewController: UITextFieldDelegate{
    
    func translationFound(isFound : Bool)
    {
        if(isFound)
        {
            self.textField.backgroundColor = UIColor.greenColor()
        }
        else
        {
            self.textField.backgroundColor = UIColor.orangeColor()
        }
    }
    
    func rotate360Degrees(duration: CFTimeInterval = 2.0, completionDelegate: AnyObject? = nil) {
        let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation.x")
        rotateAnimation.fromValue = 0.0
        rotateAnimation.toValue = CGFloat(M_PI * 2.0)
        rotateAnimation.duration = duration
        
        if let delegate: AnyObject = completionDelegate {
            rotateAnimation.delegate = delegate
        }
        self.textField.layer.addAnimation(rotateAnimation, forKey: nil)
    }
    
    func makeHTTPRequest(animation:Bool)
    {
        self.httpRequestController.detectLanguage(self.textField.text!)
        self.similarWordsList = [String]()
        self.tableView.reloadData()
        if animation
        {
            self.rotate360Degrees()
        }
    }
    
    //MARK: - TextField Delegates
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        self.textField.backgroundColor = UIColor.whiteColor()
        let text = self.textField.text! + string
        if(text.compare("") != NSComparisonResult.OrderedSame)
        {
            self.httpRequestController.autoCompleteSuggestion(text)
            self.makeHTTPRequest(false)
        }
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        if(textField == self.textField)
        {
            self.makeHTTPRequest(true)
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {   //delegate method
        textField.resignFirstResponder()
        return true
    }
}