//
//  LogColumn.swift
//  PatriotMac
//
//  Created by Ron Lisle on 4/15/24.
//

import SwiftUI
import SwiftData

struct LogColumn: View {
    
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                ForEach(items) { message in
                    Text("MQTT \(message.topic) \(message.message)")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                        .cornerRadius(8)
                }
            }
        }
        .frame(width: 200)
    }
}

#Preview {
    let config = ModelConfiguration(isStoredInMemoryOnly: true)
    let container = try! ModelContainer(for: Item.self, configurations: config)

    for item in MockData.mqttEvents() {
        container.mainContext.insert(item)
    }
    
    return LogColumn()
        .modelContainer(container)

}
