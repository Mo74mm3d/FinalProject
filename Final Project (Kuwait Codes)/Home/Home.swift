//
//  Home.swift
//  Final Project (Kuwait Codes)
//
//  Created by Mohammed Alqattan on 04/04/2022.
//

import SwiftUI

struct Home: View {
@StateObject private var vm = HomeViewModel()
@State private var showportfolio: Bool = false
    var body: some View {
        
        ZStack{
            Color.theme.background
                .ignoresSafeArea()
            
            VStack{
                
                Text("Live Prices")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer(minLength: 0)
            }
            VStack{
                Spacer()
                    .frame(height:220)
                
                if !showportfolio{
                    allCoinsList
                }
                if showportfolio{
                    portfolioCoinsList
                }
                
            }
            VStack{
                
                SearchBarView(searchText: $vm.searchText)
                
                HStack{
                    Text("Coin")
                    Spacer()
                    Text("")
                    Text("Price")
                        .frame(width: UIScreen.main.bounds.width / 3.5, alignment: .trailing)
                }
                .font(.caption)
                .foregroundColor(Color.gray)
                .padding(.horizontal)
                    Spacer()
                        .frame(height:400)
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        Home()
        }
        .environmentObject(dev.homeVM)
    }
}

extension Home{
    
    private var allCoinsList: some View {
        List {
            ForEach(vm.allCoins) { coin in
                CoinRowView(coin: coin, showHoldingsColumn: false)
                    .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 10))
                    
            }
        }
        .listStyle(PlainListStyle())
    }
    
    private var portfolioCoinsList: some View {
        List {
            ForEach(vm.portfolioCoins) { coin in
                CoinRowView(coin: coin, showHoldingsColumn: true)
                    .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 10))
                    
            }
        }
        .listStyle(PlainListStyle())
    }
    
}
