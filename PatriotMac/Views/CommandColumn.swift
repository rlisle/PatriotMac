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
                
                Text(partOfDay(date: Date()).rawValue)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(partOfDay() == .Asleep ? Color.green : Color.blue)
                    .cornerRadius(8)
            }
        }
        .frame(width: 200)
    }
}

#Preview {
    CommandColumn()
}
