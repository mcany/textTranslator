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
    func HTTPRequestReceived(JSONData:AnyObject)
}

class LanguageDetector {
    var handler: HTTPRequestHandler!
    
    func detectLanguage(text: String)
    {
        
        Alamofire.request(.GET, Constants.URL, parameters: [ "q": text, "key": Constants.apiKey ])
            .responseJSON { (req, res, json) in
                NSLog("Success: \(Constants.URL)")
                self.handler.HTTPRequestReceived(json.value!)
        }
    }
}
