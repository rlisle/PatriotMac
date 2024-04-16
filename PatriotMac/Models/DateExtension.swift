//
//  DateExtension.swift
//  PatriotMac
//
//  Created by Ron Lisle on 4/16/24.
//

import Foundation

extension Date {
    func isAM() -> Bool {
        let currentDate: Date = self
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: self)
        return hour < 13
    }
}
