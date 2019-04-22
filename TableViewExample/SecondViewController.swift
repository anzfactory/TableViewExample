//
//  SecondViewController.swift
//  TableViewExample
//
//  Created by sasato on 2019/04/22.
//  Copyright © 2019 sasato. All rights reserved.
//

import UIKit

final class SecondViewController: UIViewController {
    
    private let datasouce: DataSource = DataSource()
    
    private let tableView: UITableView = {

        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .white
        tableView.estimatedRowHeight = 44.0
        tableView.rowHeight = UITableView.automaticDimension
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datasouce.register(tableView)
        
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
