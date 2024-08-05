//
//  SettingsView.swift
//  Crypto Tracker
//
//  Created by Mac on 03/08/2024.
//

import SwiftUI

struct SettingsView: View {
    
    let defaultURL = URL(string: "https://www.google.com")!
    let youtubeURL = URL(string: "https://www.youtube.com/c/Swiftfulthinking")!
    let coffeeURL = URL(string: "https://www.google.com")!
    let coingeckoURL = URL(string: "https://www.coingecko.com")!
    let personalURL = URL(string: "https://www.coingecko.com")!
    var body: some View {
        NavigationView {
            ZStack {
                // background
                Color.theme.background.ignoresSafeArea()
                
                // content
                List {
                    swiftfulThinkingSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    geckoSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    developerSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    applicationSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                }
            }
            .font(.headline)
            .accentColor(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton()
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

extension SettingsView {
    private var swiftfulThinkingSection: some View {
        Section(header: Text("Cheep")) {
            VStack(alignment: .leading, content: {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app made by following Swiftful Thinking course on Youtube. It uses MVVM architecture, Combine, CoreData!")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }).padding(.vertical)
            Link("Subscribe on Youtube 🥰", destination: youtubeURL)
            Link("Support his coffee addiction ☕️", destination: coffeeURL)
            Link("Subscribe on Youtube", destination: youtubeURL)
            Link("Subscribe on Youtube", destination: youtubeURL)
            
        }
    }
    
    private var geckoSection: some View {
        Section(header: Text("CoinGecko")) {
            VStack(alignment: .leading, content: {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The crypto currency data that is used in this app comes from a free API from CoinGecko! Prices may be slightly delayed.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }).padding(.vertical)
            Link("Visit CoinGecko 🥰", destination: coingeckoURL)
        }
    }
    
    private var developerSection: some View {
        Section(header: Text("Developer")) {
            VStack(alignment: .leading, content: {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was develop by Nhat Tri Tran Dinh with swiftUI. The projects benefits from multi-threading, publishers/subcribers, and data persistance.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }).padding(.vertical)
            Link("Visit CoinGecko 🥰", destination: personalURL)
            
        }
    }
    
    private var applicationSection: some View {
        Section(header: Text("Application")) {
            Link("Terms of Service", destination: defaultURL)
            Link("Privacy Policy", destination: defaultURL)
            Link("Company Website", destination: defaultURL)
            Link("Learn More", destination: defaultURL)
            
        }
    }
}
