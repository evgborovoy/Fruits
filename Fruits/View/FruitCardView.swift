//
//  FruitCardView.swift
//  Fruits
//
//  Created by Evgeniy Borovoy on 11/29/24.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - Properties
    var fruit: Fruit
    
    @State private var isAnimated: Bool = false
    
    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                
                // FRUIT Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimated ? 1.0 : 0.6)
                
                // FRUIT Title
                Text(fruit.title)
                    .foregroundStyle(.white)
                    .font(.largeTitle.weight(.heavy))
                    .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2)
                
                // FRUIT Headline
                Text(fruit.headline)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // START Button
                StartButtonView()
            }
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimated = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding(.horizontal, 20)
    }
}

// MARK: - Preview
#Preview {
    FruitCardView(fruit: fruitsData[1])
}
