//
//  LanguageDetector.swift
//  textTranslator
//
//  Created by Mertcan Yigin on 9/21/15.
//  Copyright © 2015 Mertcan Yigin. All rights reserved.
//

import Alamofire
import Foundation
import SwiftyJSON

protocol HTTPRequestHandler
{
    func HTTPRequestReceived(URL:String, JSONData:AnyObject)
}

class LanguageDetector {
    var handler: HTTPRequestHandler!
    
    func detectLanguage(text: String)
    {
        let URL = Constants.detectLanguageURL
        let request = self.requestGET(URL,parameters: [ "q": text, "key": Constants.detectLanguageapiKey ])
        //Alamofire.request(.GET, Constants.detectLanguageURL, parameters: [ "q": text, "key": Constants.detectLanguageapiKey ])
        
        request.responseJSON { (req, res, json) in
            NSLog("Success: \(URL)")
            self.completionHandler(URL,request: req, response: res, result: json.value!)
        }
    }
    
    func translate(textToTranslate: String, sourceLanguage: String, targetLanguage:String)
    {
        let URL = Constants.translateURLGET

        let request = self.requestGET(URL, parameters: [ "q": textToTranslate, "langpair": sourceLanguage+"|"+targetLanguage ])
        
        //Alamofire.request(.GET, Constants.translateURL, parameters: [ "q": textToTranslate, "langpair": sourceLanguage+"|"+targetLanguage ])
        
        request.responseJSON { (req, res, json) in
            NSLog("Success: \(URL)")
            self.completionHandler(URL,request: req, response: res, result: json.value!)
        }
        
    }
    
    func requestGET(URL: String, parameters: [String : AnyObject]) -> Request
    {
        return Alamofire.request(.GET, URL, parameters: parameters)
    }
    
    func completionHandler(URL: String, request: NSURLRequest?, response: NSHTTPURLResponse?, result: AnyObject)
    {
        self.handler.HTTPRequestReceived(URL, JSONData: result)
    }
}
