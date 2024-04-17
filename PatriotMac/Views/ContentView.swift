//
//  ContentView.swift
//  PatriotMac
//
//  Created by Ron Lisle on 4/15/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var mqttEvents: [MqttEvent]
    
    var body: some View {
        VStack {
            StatusRow()
            HStack(spacing: 8) {
                CommandColumn()
                    .padding(4)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(.gray, lineWidth: 1)
                    )
                StatusColumn()
                    .padding(4)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(.gray, lineWidth: 1)
                    )
                LogColumn()
                    .padding(4)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(.gray, lineWidth: 1)
                    )
            }
            .padding()
            .padding(.top, -16)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

#Preview {
    let config = ModelConfiguration(isStoredInMemoryOnly: true)
    let container = try! ModelContainer(for: MqttEvent.self, configurations: config)
    
    // Create preview MQTT mqttEvents
    for mqttEvent in MockData.mqttEvents() {
        container.mainContext.insert(mqttEvent)
    }
    
    return ContentView()
        .modelContainer(container)
}
