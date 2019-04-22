//
//  DataSource.swift
//  TableViewExample
//
//  Created by sasato on 2019/04/22.
//  Copyright © 2019 sasato. All rights reserved.
//

import UIKit

final class DataSource: NSObject {
    
    private let delegate: Delegate = Delegate()
    
    func register(_ tableView: UITableView) {
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "CELL")
        tableView.dataSource = self
        tableView.delegate = delegate
    }
}

extension DataSource: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath)
        cell.textLabel?.text = "indexPath: \(indexPath)"
        return cell
    }
}
