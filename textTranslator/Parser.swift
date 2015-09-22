//
//  Parser.swift
//  textTranslator
//
//  Created by Mertcan Yigin on 9/21/15.
//  Copyright © 2015 Mertcan Yigin. All rights reserved.
//

import UIKit
import SwiftyJSON

class Parser: NSObject {
    var JSONData:AnyObject
    var json:JSON
    
    init(JSONData: AnyObject) {
        self.JSONData = JSONData
        self.json = JSON(self.JSONData)
        //                print(json["data"]["detections"][0]["language"])
        
    }
    
    func getDetections() -> [JSON]
    {
        return json["data"]["detections"].array!
    }
    
    
    func getMatches() -> [JSON]?
    {
        return json["matches"].array
    }
}
