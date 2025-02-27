//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Antoine Goncalves on 09/07/2024.
//

import UIKit

extension Date {
    
//    func convertToMonthYearFormat() -> String {
//        let dateFormatter           = DateFormatter()
//        dateFormatter.dateFormat    = "MMM yyyy"
//        
//        return dateFormatter.string(from: self)
//    }
    
    func convertToMonthYearFormat() -> String {
        return formatted(.dateTime.month().year())
    }
}
