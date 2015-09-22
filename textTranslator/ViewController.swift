//
//  ViewController.swift
//  textTranslator
//
//  Created by Mertcan Yigin on 9/21/15.
//  Copyright © 2015 Mertcan Yigin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, HTTPRequestHandler {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var translationLabel: UILabel!
    @IBOutlet weak var languageLabel: UILabel!
    var languageDetector: LanguageDetector!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.languageDetector = LanguageDetector()
        self.languageDetector.handler = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func HTTPRequestReceived(URL: String, JSONData: AnyObject) {
        let parser = Parser(JSONData: JSONData)
        if(URL == Constants.detectLanguageURL)
        {
            let detections = parser.getDetections()
            print(detections)
            var text = ""
            for detection in detections
            {
                text += detection["language"].description + "\n"
            }
            if(detections.count > 0)
            {
                let language = Languages(rawValue: detections[0]["language"].description)
                //print(language?.debugDescription)
                self.languageLabel.text = language?.description
                self.languageDetector.translate(self.textField.text!, sourceLanguage: detections[0]["language"].description, targetLanguage: "en")
            }
            else
            {
                self.languageLabel.text = "Language"
                self.translationLabel.text = "Translation"
            }
        }
        else if (URL == Constants.translateURLGET )
        {
            let responses = parser.getResponses()
            if(responses != nil && responses!.count > 0 )
            {
                self.translationLabel.text = responses![0]["translation"].description
            }
            else
            {
                self.translationLabel.text = "Translation"
            }
        }
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        if(textField == self.textField)
        {
            self.languageDetector.detectLanguage(self.textField.text!)
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {   //delegate method
        textField.resignFirstResponder()
        
        return true
    }
}

