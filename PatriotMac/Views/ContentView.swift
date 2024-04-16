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
    @Query private var items: [Item]
    
    var body: some View {
        HStack(spacing: 20) {
            CommandColumn()
            StatusColumn()
            LogColumn()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)//        NavigationSplitView {
    }
}

#Preview {
    let config = ModelConfiguration(isStoredInMemoryOnly: true)
    let container = try! ModelContainer(for: Item.self, configurations: config)
    
    // Create preview MQTT items
    for item in MockData.mqttEvents() {
        container.mainContext.insert(item)
    }
    
    return ContentView()
        .modelContainer(container)
}
