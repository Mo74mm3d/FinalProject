//
//  Learn More.swift
//  Final Project (Kuwait Codes)
//
//  Created by Mohammed Alqattan on 04/04/2022.
//

import SwiftUI
import AVKit

struct Learn_More: View {
    
    @State private var player = AVPlayer()
    
    var body: some View {
        
        ZStack{
            
           
            ScrollView{
                VStack{
                    Group{
                    
                    Text("Learn More")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding()
                        Text("FAQ")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(Color.blue)
                                
                    Text("What is Cryptocurrency?")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.theme.green)
                        .padding()
                    Text("A cryptocurrency, crypto-currency, or crypto is a digital currency designed to work as a medium of exchange through a computer network that is not reliant on any central authority, such as a government or bank, to uphold or maintain it.")
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                        .padding()
                    Text("How Does Investing In Cryptocurrency Work?")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.theme.green)
                    Text("The exchange will match your buy order with someone making a sell order at the same price and make the trade. Once your trade is complete, the exchange will hold your cryptocurrency for you in a custodial wallet. Buying cryptocurrency is the easy part. As a crypto investor, you have to be prepared for volatility.")
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                        .padding()
                    Text("Is Investing in Cryptocurrency Safe?")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.theme.green)
                    Text("Compared to other asset classes such as stocks and government bonds, investing in cryptocurrency can be considered very risky. While cryptocurrencies are generally seen as legal across Europe, many aspects of cryptocurrency remain unregulated—or may be subject to shifting regulations.")
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                        .padding()
                    }
//                    Text("More About Crypto...")
//                        .font(.title)
//                        .fontWeight(.bold)
//                        .foregroundColor(.black)
//                        .padding()
                    
                    
                    
                }
            }
        }
        
    }
}

struct Learn_More_Previews: PreviewProvider {
    static var previews: some View {
        Learn_More()
    }
}
