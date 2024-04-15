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
                ForEach(1..<21) { index in
                    Text("Column 2 - Row \(index)")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .cornerRadius(8)
                }
            }
        }
        .frame(width: 200)
    }
}

#Preview {
    StatusColumn()
}
