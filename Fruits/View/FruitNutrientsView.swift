//
//  FruitNutrientsView.swift
//  Fruits
//
//  Created by Evgeniy Borovoy on 11/29/24.
//

import SwiftUI

struct FruitNutrientsView: View {
    // MARK: - Properties
    let fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fats", "Protein", "Vitamins", "Minerals"]
    
    // MARK: - Body
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id:\.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundStyle(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                            
                    }
                }
            }
        }
        
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 480)) {
    FruitNutrientsView(fruit: fruitsData[2])
        .preferredColorScheme(.dark)
}
