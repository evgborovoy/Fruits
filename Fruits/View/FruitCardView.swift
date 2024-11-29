//
//  FruitCardView.swift
//  Fruits
//
//  Created by Evgeniy Borovoy on 11/29/24.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - Properties
    @State private var isAnimated: Bool = false
    
    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimated ? 1.0 : 0.6)
                
                Text("Blueberry")
                    .foregroundStyle(.white)
                    .font(.largeTitle.weight(.heavy))
                    .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2)
                
                Text("Blueberries are sweet and juicy fruits that are great for eating fresh or frozen. ")
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                StartButtonView()
            }
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimated = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(colors: [.colorBlueberryLight, .colorBlueberryDark], startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding(.horizontal, 20)
    }
}

// MARK: - Preview
#Preview {
    FruitCardView()
}
