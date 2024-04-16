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
                Text("Sleeping")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(partOfDay() == .Asleep ? Color.green : Color.blue)
                    .cornerRadius(8)
                Text("Awake Early")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(partOfDay() == .AwakeEarly ? Color.green : Color.blue)
                    .cornerRadius(8)
                Text("Morning")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(partOfDay() == .Morning ? Color.green : Color.blue)
                    .cornerRadius(8)
                Text("Afternoon")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(partOfDay() == .Afternoon ? Color.green : Color.blue)
                    .cornerRadius(8)
                Text("Evening")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(partOfDay() == .Evening ? Color.green : Color.blue)
                    .cornerRadius(8)
                Text("Bedtime")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(partOfDay() == .Retiring ? Color.green : Color.blue)
                    .cornerRadius(8)
            }
        }
        .frame(width: 200)
    }
}

#Preview {
    CommandColumn()
}
