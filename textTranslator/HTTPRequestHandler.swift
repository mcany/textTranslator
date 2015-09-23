//
//  HTTPRequestHandler.swift
//  textTranslator
//
//  Created by Mertcan Yigin on 22/09/15.
//  Copyright © 2015 Mertcan Yigin. All rights reserved.
//

import Foundation
import UIKit


extension ViewController:HTTPRequestHandler{
    //MARK: - HTTP Request Handler
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
                if(language?.description != "")
                {
                    self.languageLabel.text = language?.description
                    self.httpRequestController.translate(self.textField.text!, sourceLanguage: detections[0]["language"].description, targetLanguage: self.targetLanguage)
                }
                else
                {
                    self.languageLabel.text = "Language"
                }
            }
            else
            {
                self.languageLabel.text = "Language"
                self.translationLabel.text = "No Translation"
                self.translationFound(false)
            }
        }
        else if (URL == Constants.translateURLGET )
        {
            self.similarWordsList = [String]()

            let matches = parser.getMatches()
            if(matches != nil && matches!.count > 0 )
            {
                //self.translationLabel.transform = CGAff
                for match in matches!
                {
                    self.similarWordsList.append(match["translation"].description)
                }
                self.translationLabel.text = matches![0]["translation"].description
                self.translationFound(true)
                self.tableView.reloadData()
            }
            else
            {
                self.translationLabel.text = "No Translation"
                self.translationFound(false)
            }
        }
        else if(URL == Constants.autoCompletionURL)
        {
            if(JSONData.count > 0)
            {
                var suggestion = JSONData[1][0]
                var sentence = suggestion.componentsSeparatedByString(" ")
                if sentence.count > 1
                {
                    suggestion = sentence[0]
                }
                self.suggestedWord = suggestion as! String
                self.autocompleteTableView.hidden = false
                self.autocompleteTableView.reloadData()
            }
        }
    }
    
}