//
//  ViewController.swift
//  textTranslator
//
//  Created by Mertcan Yigin on 9/21/15.
//  Copyright © 2015 Mertcan Yigin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var translationLabel: UILabel!
    @IBOutlet weak var languageLabel: UILabel!
    @IBOutlet var languagePickerView: UIPickerView!
    @IBOutlet var tableView: UITableView!
    @IBOutlet var autocompleteTableView: UITableView!
    //let autocompleteTableView = UITableView(frame: CGRectMake(0,80,320,120), style: UITableViewStyle.Plain)

    var httpRequestController: HTTPRequestController!
    let pickerData = Languages.array
    var targetLanguage:String = "en"
    var similarWordsList = [String]()
    var suggestedWord = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.textField.backgroundColor = UIColor.whiteColor()
        self.httpRequestController = HTTPRequestController()
        self.httpRequestController.handler = self
        self.languagePickerView.reloadAllComponents()
        
        //start with english
        self.languagePickerView.selectRow(30, inComponent: 0, animated: false)
        self.similarWordsList = [String]()
        
        //halft transparent gradient background
        let view: UIView = self.view
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.opacity = 0.5
        gradient.colors = [UIColor.whiteColor().CGColor, UIColor.blackColor().CGColor]
        view.layer.insertSublayer(gradient, atIndex: 0)
        
        //auto complete table view
        self.autocompleteTableView.hidden = true

        //let constraint = NSLayoutConstraint(item: self.autocompleteTableView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self.textField, attribute: NSLayoutAttribute.Bottom, multiplier: 1, constant: 100)
        //self.autocompleteTableView.addConstraint(constraint)
        //self.view.addSubview(self.autocompleteTableView)

        //self.view.insertSubview(self.autocompleteTableView, belowSubview: self.textField)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldAutorotate() -> Bool {
        return false
    }    
}

