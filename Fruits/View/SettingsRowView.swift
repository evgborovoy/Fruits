//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Evgeniy Borovoy on 11/30/24.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - Properties
    let title: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - Body
    var body: some View {
        Divider().padding(.vertical, 4)
        
        HStack {
            Text(title).foregroundStyle(.secondary)
            Spacer()
            
            if let content = content {
                Text(content)
            } else if let linkLabel = linkLabel,
                      let linkDestination = linkDestination,
                      let url = URL(string: "https://\(linkDestination)") {
                HStack(spacing: 5) {
                    Link(linkLabel, destination: url)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundStyle(.cyan)
                }
            } else {
                EmptyView()
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    SettingsRowView(title: "key", content: "value")
}
