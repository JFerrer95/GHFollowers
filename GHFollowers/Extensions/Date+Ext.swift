//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Jonathan Ferrer on 3/24/20.
//  Copyright © 2020 jonathan ferrer. All rights reserved.
//

import Foundation

extension Date {
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
