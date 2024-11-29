//
//  FruitHeaderView.swift
//  Fruits
//
//  Created by Evgeniy Borovoy on 11/29/24.
//

import SwiftUI

struct FruitHeaderView: View {
    // MARK: - Properties
    let fruit: Fruit
    
    @State private var isAnimatingImage: Bool = false
    
    // MARK: - Body
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1 : 0.6)
        }
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 440)) {
    FruitHeaderView(fruit: fruitsData[0])
}
