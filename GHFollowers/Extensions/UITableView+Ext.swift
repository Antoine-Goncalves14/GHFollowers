//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by Antoine Goncalves on 11/07/2024.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
