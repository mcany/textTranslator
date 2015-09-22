//
//  TableViewController.swift
//  textTranslator
//
//  Created by Mertcan Yigin on 22/09/15.
//  Copyright © 2015 Mertcan Yigin. All rights reserved.
//

import Foundation
import UIKit


extension ViewController: UITableViewDelegate, UITableViewDataSource{
    //MARK: - TableView Delegates and data sources
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var count = 0
        if(tableView == self.tableView)
        {
            count = self.similarWordsList.count
        }
        else if (tableView == self.autocompleteTableView)
        {
            count = 1
        }
        return count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell =  UITableViewCell()
        if(tableView == self.tableView)
        {
            cell.textLabel?.text = self.similarWordsList[indexPath.row]
        }
        else if (tableView == self.autocompleteTableView)
        {
            cell.textLabel?.text = self.suggestedWord
        }
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if (tableView == self.autocompleteTableView)
        {
            self.textField.text = self.suggestedWord
            self.autocompleteTableView.hidden = true
            self.makeHTTPRequest(true)
        }
    }
}
