//
//  Portfolio.swift
//  Final Project (Kuwait Codes)
//
//  Created by Mohammed Alqattan on 04/04/2022.
//

import SwiftUI

struct Portfolio: View {
    @StateObject private var vm = HomeViewModel()
    var body: some View {
        ZStack{
            Color.theme.background
                .ignoresSafeArea()
            
            VStack{
                Text("Portfolio")
                    .font(.title)
                    .fontWeight(.bold)
            
                Spacer()
            }
            VStack{
            HStack{
                Text("Coin")
                Spacer()
                Text("Holdings")
                Text("Price")
                    .frame(width: UIScreen.main.bounds.width / 3.5, alignment: .trailing)
            }
            .font(.caption)
            .foregroundColor(Color.gray)
            .padding(.horizontal)
                Spacer()
                    .frame(height:550)
                
        }
            VStack{
                Spacer()
                    .frame(height:95)
            portfolioCoinsList
            }
        }
    }
}

struct Portfolio_Previews: PreviewProvider {
    static var previews: some View {
        Portfolio()
    }
}

extension Portfolio {
    private var portfolioCoinsList: some View {
        List{
            ForEach(vm.portfolioCoins) { coin in
                CoinRowView(coin: coin, showHoldingsColumn: true)
                    .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 10))
            }
        }
        .listStyle(PlainListStyle())
    }
}
