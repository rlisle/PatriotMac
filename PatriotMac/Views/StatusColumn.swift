//
//  StatusColumn.swift
//  PatriotMac
//
//  Created by Ron Lisle on 4/15/24.
//

import SwiftUI

struct StatusColumn: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                MQTTStatus()
                ZigbeeStatus()
            }
        }
        .frame(width: 200)
    }
}

struct MQTTStatus: View {
    var isConnected: Bool = false
    var body: some View {
        Text("MQTT: not connected")
            .padding()
            .frame(maxWidth: .infinity)
            .background(isConnected ? Color.green : Color.red)
            .cornerRadius(8)
    }
}

struct ZigbeeStatus: View {
    var isConnected: Bool = false
    var body: some View {
        Text("Zigbee: not connected")
            .padding()
            .frame(maxWidth: .infinity)
            .background(isConnected ? Color.green : Color.red)
            .cornerRadius(8)
    }
}

#Preview {
    StatusColumn()
}
