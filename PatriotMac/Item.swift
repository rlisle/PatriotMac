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
    
    init() {
        self.timestamp = Date()
        self.topic = "none"
        self.message = "none"
    }
    
    init(timestamp: Date, topic: String, message: String) {
        self.timestamp = timestamp
        self.topic = topic
        self.message = message
    }
}
