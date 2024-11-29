//
//  StartButtonView.swift
//  Fruits
//
//  Created by Evgeniy Borovoy on 11/29/24.
//

import SwiftUI

struct StartButtonView: View {
    
    // MARK: - Body
    var body: some View {
        Button {
            print("Exit the onboarding ")
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrowtriangle.forward.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        }
        .tint(.white) // For buttons, links, controls or other interactive elements
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    StartButtonView()
}
