//
//  Delegate.swift
//  TableViewExample
//
//  Created by sasato on 2019/04/22.
//  Copyright © 2019 sasato. All rights reserved.
//

import UIKit

final class Delegate: NSObject {
    
}

extension Delegate: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        print("heightForHeaderInSection: \(section)")
        return .leastNormalMagnitude
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        print("viewForHeaderInSection: \(section)")
        return nil
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        print("heightForFooterInSection: \(section)")
        return .leastNormalMagnitude
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        print("viewForFooterInSection: \(section)")
        return nil
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("scrollViewDidScroll")
    }
}
