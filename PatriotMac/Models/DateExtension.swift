//
//  DateExtension.swift
//  PatriotMac
//
//  Created by Ron Lisle on 4/16/24.
//

import Foundation

public extension Date {
    func isAM() -> Bool {
        let currentDate: Date = self
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: self)
        return hour < 13
    }
    
    // Return the date at a specified 24:00 time string
    static func atTime(_ timeString: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm:ss"
//        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
//        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        if let date = dateFormatter.date(from: timeString) {
            return date
        }
        print("Failed to convert string \"\(timeString)\"to Date")
        return Date()
    }
}
