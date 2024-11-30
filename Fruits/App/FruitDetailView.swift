//
//  FruitDetailView.swift
//  Fruits
//
//  Created by Evgeniy Borovoy on 11/29/24.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: - Properties
    let fruit: Fruit
    
    // MARK: - Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // Header
                FruitHeaderView(fruit: fruit)
                
                VStack(alignment: .leading, spacing: 20) {
                    // Title
                    Text(fruit.title)
                        .font(.largeTitle.weight(.heavy))
                        .foregroundStyle(fruit.gradientColors[1])
                    
                    // Headline
                    Text(fruit.headline)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    
                    // Nutrients
                    FruitNutrientsView(fruit: fruit)
                    
                    // Subheadline
                    Text("Learn more about \(fruit.title)".uppercased())
                        .fontWeight(.bold)
                        .foregroundStyle(fruit.gradientColors[1])
                    
                    // Description
                    Text(fruit.description).multilineTextAlignment(.leading)
                    
                    // Link
                    SourceLinkView()
                        .padding(.vertical, 20)
                }
                .padding(20)
                .frame(maxWidth: 640, alignment: .center)
            }
        }
        .ignoresSafeArea(edges: .top)
    }
}

#Preview {
    FruitDetailView(fruit: fruitsData[4])
}
