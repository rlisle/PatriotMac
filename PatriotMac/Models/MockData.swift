//
//  MockData.swift
//  PatriotMac
//
//  Created by Ron Lisle on 4/16/24.
//

import Foundation

class MockData {
    class func mqttEvents() -> [Item] {
        var events: [Item] = []
        events.append(Item(timestamp: Date(), topic: "patriot/alive", message: "FrontPanel"))
        events.append(Item(timestamp: Date(), topic: "patriot/alive", message: "RearPanel"))
        events.append(Item(timestamp: Date(), topic: "patriot/alive", message: "LeftSlide"))
        return events
    }
}
