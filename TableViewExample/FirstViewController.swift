//
//  FirstViewController.swift
//  TableViewExample
//
//  Created by sasato on 2019/04/22.
//  Copyright © 2019 sasato. All rights reserved.
//

import UIKit

final class FirstViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView!
    
    private let datasouce: DataSource = DataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datasouce.register(tableView)
    }
}
