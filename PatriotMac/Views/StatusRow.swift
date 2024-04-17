//
//  StatusRow.swift
//  PatriotMac
//
//  Created by Ron Lisle on 4/17/24.
//

import SwiftUI

struct StatusRow: View {
    var body: some View {
        HStack {
            Spacer()
            // Network/MQTT
            Image(systemName: "network")
                //.padding()
                //.foregroundColor(.black)
                .font(.system(size: 20))

            // # Photons (number in a circle
            Image(systemName: "3.square")
                //.padding()
                //.foregroundColor(.black)
                .font(.system(size: 24))

            // PartOfDay
            partOfDayIcon(date: Date())
                .padding(.vertical, 4)
                //.foregroundColor(.black)
                .font(.system(size: 24))
        }
    }
}

#Preview {
    StatusRow()
}
