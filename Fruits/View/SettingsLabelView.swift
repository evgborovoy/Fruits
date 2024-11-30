//
//  SettingsLabelView.swift
//  Fruits
//
//  Created by Evgeniy Borovoy on 11/29/24.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - Properties
    let labelText: String
    let image: String
    
    // MARK: - Body
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: image)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    SettingsLabelView(labelText: "labelText", image: "info.circle")
}
