//
//  ContentView.swift
//  Final Project (Kuwait Codes)
//
//  Created by Mohammed Alqattan on 28/03/2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var vm: HomeViewModel
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            Portfolio()
                .tabItem {
                    Image(systemName: "person")
                    Text("Portfolio")
                }
            
            Withdraw()
                .tabItem{
                    Image(systemName: "dollarsign.circle")
                    Text("Withdraw/Deposit")
                }
            
            Learn_More()
                .tabItem{
                    Image(systemName: "info.circle")
                    Text("Learn More")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
