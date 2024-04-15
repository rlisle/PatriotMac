//
//  CommandColumn.swift
//  PatriotMac
//
//  Created by Ron Lisle on 4/15/24.
//

import SwiftUI

struct CommandColumn: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                ForEach(1..<21) { index in
                    Text("Column 1 - Row \(index)")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(8)
                }
            }
        }
        .frame(width: 200)
    }
}

#Preview {
    CommandColumn()
}
