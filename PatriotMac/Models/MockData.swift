//
//  MockData.swift
//  PatriotMac
//
//  Created by Ron Lisle on 4/16/24.
//

import Foundation

class MockData {
    class func mqttEvents() -> [MqttEvent] {
        var events: [MqttEvent] = []
        events.append(MqttEvent(timestamp: Date(), topic: "patriot/alive", message: "FrontPanel"))
        events.append(MqttEvent(timestamp: Date(), topic: "patriot/alive", message: "RearPanel"))
        events.append(MqttEvent(timestamp: Date(), topic: "patriot/alive", message: "LeftSlide"))
        return events
    }
}
