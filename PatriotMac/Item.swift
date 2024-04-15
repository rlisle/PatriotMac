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
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}