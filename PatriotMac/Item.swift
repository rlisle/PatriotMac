//
//  Item.swift
//  PatriotMac
//
//  Created by Ron Lisle on 4/15/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    var topic: String
    var message: String
    
    init(timestamp: Date) {
        self.timestamp = timestamp
        topic = "none"
        message = "none"
    }
}
