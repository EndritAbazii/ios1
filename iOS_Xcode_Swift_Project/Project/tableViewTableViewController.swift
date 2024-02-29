//
//  tableViewTableViewController.swift
//  Project
//
//  Created by Endrit Abazi on 25/02/24.
//  Copyright © 2024 Endrit Abazi. All rights reserved.
//

import UIKit

class tableViewTableViewController: UITableViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var stu_list_view: UITableView!
    
    var stu_list:[Int] = []
        var selected:Int = 39
        
}
