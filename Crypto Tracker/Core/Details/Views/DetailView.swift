//
//  DetailView.swift
//  Crypto Tracker
//
//  Created by Mac on 03/08/2024.
//

import SwiftUI

struct DetailLoadingView: View {
    @Binding var coin: CoinModel?
    
    var body: some View {
        ZStack {
            if let coin = coin {
                DetailView(coin: coin)
            }
        }
    } 
}

struct DetailView: View {
    
    @StateObject private var vm: DetailViewModel
    @State private var viewFullDescription: Bool = false
    private let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    private var spacing: CGFloat = 30
    
    init(coin: CoinModel) {
        _vm = StateObject(wrappedValue: DetailViewModel(coin: coin))
        print("Initializing Detail View for \(coin.name)")
    }
    var body: some View {
        ScrollView {
            VStack {
                ChartView(coin: vm.coin)
                    .padding(.vertical)
                VStack(spacing: 20) {
                    overviewTitle
                    Divider()
                    
                    descriptionSection
                    overviewGrid
                    
                    additionalTitle
                    Divider()
                    additionalGrid
                    websiteSection
                    
                }
                .padding()
            }

            
        }
        .background(Color.theme.background)
        .ignoresSafeArea()
        .navigationTitle(vm.coin.name)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                navigationBarTrailingItems
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(coin: dev.coin)

        }
    }
}

extension DetailView {
    private var overviewTitle: some View {
        Text("Overview")
            .font(.title)
            .bold()
            .foregroundColor(Color.theme.accent)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var additionalTitle: some View {
        Text("Additional Details")
            .font(.title)
            .bold()
            .foregroundColor(Color.theme.accent)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var overviewGrid: some View {
        LazyVGrid(columns: columns,
                  alignment: .leading,
                  spacing: nil,
                  pinnedViews: [],
                  content: {
            ForEach(vm.overviewStatistics) {
                stat in
                StatisticView(stat: stat)
            }
        })
    }
    
    private var additionalGrid: some View {
        LazyVGrid(columns: columns,
                  alignment: .leading,
                  spacing: nil,
                  pinnedViews: [],
                  content: {
            ForEach(vm.additionalStatistics) {
                stat in
                StatisticView(stat: stat)
            }
        })
    }
    
    private var navigationBarTrailingItems: some View {
        HStack {
            Text(vm.coin.symbol.uppercased())
                .font(.headline)
            .foregroundColor(Color.theme.secondaryText)
            CoinImageView(coin: vm.coin)
                .frame(width: 25, height: 25)
        }
    }
    
    private var descriptionSection: some View {
        ZStack {
            if let coinDescription = vm.coinDescription, !coinDescription.isEmpty {
                VStack {
                    Text(coinDescription)
                        .lineLimit(viewFullDescription ? nil : 3)
                        .font(.callout)
                        .foregroundColor(Color.theme.secondaryText)
                    
                    Button(action: {
                        withAnimation {
                            viewFullDescription.toggle()
                        }
                    }, label: {
                        Text(viewFullDescription ? "Less" : "Read more...")
                    }).accentColor(.blue)
                }.frame(maxWidth: .infinity, alignment:.leading)
                
                

            }
                
        }
    }
    
    private var websiteSection: some View {
        VStack(alignment: .leading, spacing: 20) {
            if let websiteString = vm.websiteURL, let websiteUrl = URL(string: websiteString) {
                Link("Website", destination: websiteUrl)
            }
            
            if let redditString = vm.redditURL, let redditUrl = URL(string: redditString) {
                Link("Reddit", destination: redditUrl)
            }
        }
        .accentColor(.blue)
        .frame(maxWidth: .infinity, alignment: .leading)
        .font(.headline)
    }
}
