//
//  SettingsView.swift
//  Fruits
//
//  Created by Evgeniy Borovoy on 11/29/24.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Properties
    @Environment(\.dismiss) var dismiss
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - Group 1
                    GroupBox(content: {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of vitamins A, C, and E, and minerals like potassium, magnesium, and iron.")
                                .font(.footnote)
                        }
                    }, label: {
                        SettingsLabelView(labelText: "fruits", image: "info.circle")
                    })
                    
                    // MARK: - Group 2
                    GroupBox(
                        content: {
                            SettingsRowView(
                                title: "Developer",
                                content: "John / Aurora"
                            )
                            SettingsRowView(
                                title: "Designer",
                                content: "SuperStar"
                            )
                            SettingsRowView(
                                title: "Website",
                                linkLabel: "SuperStar company",
                                linkDestination: "google.com"
                            )
                            SettingsRowView(
                                title: "X",
                                linkLabel: "XAccount",
                                linkDestination: "x.com"
                            )
                            SettingsRowView(
                                title: "Version",
                                content: "1.1.4"
                            )
                        },
                        label: {
                            SettingsLabelView(labelText: "Application", image: "apps.iphone")
                        })
                    
                    // MARK: - Group 3
                    GroupBox(content: {
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restart the app. That way it starts from the beginning and you will see onboarding again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            Text("Onboard again?".uppercased())
                        }
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    }, label: {
                        SettingsLabelView(labelText: "Restart", image: "arrow.counterclockwise")
                    })
                }
                .navigationTitle("Settings")
                .toolbarTitleDisplayMode(.large)
                .padding()
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}
