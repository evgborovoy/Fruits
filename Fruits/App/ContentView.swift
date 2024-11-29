//
//  ContentView.swift
//  Fruits
//
//  Created by Evgeniy Borovoy on 11/29/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    let fruits: [Fruit] = fruitsData
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruits) { fruit in
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

#Preview {
    ContentView()
}
