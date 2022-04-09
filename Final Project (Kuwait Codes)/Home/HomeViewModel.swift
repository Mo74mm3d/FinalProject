//
//  HomeViewModel.swift
//  Final Project (Kuwait Codes)
//
//  Created by Mohammed Alqattan on 04/04/2022.
//

import Foundation
import Combine
class HomeViewModel: ObservableObject {
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    @Published var searchText: String = ""
    
    private let dataService = CoinDataService()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        addSubscribers()
    }
    
    
    func addSubscribers() {
        
        
        $searchText
            .combineLatest(dataService.$allCoins)
            .debounce(for: .seconds(0.5), scheduler: DispatchQueue.main)
            .map { (text, startingCoins) -> [CoinModel] in
                
                guard !text.isEmpty else {
                    return startingCoins
                }
                
                let lowercaseText = text.lowercased()
                
                
                return startingCoins.filter { (coin) -> Bool in
                    return coin.name.lowercased().contains(lowercaseText) ||
                        coin.symbol.lowercased().contains(lowercaseText) ||
                        coin.id.lowercased().contains(lowercaseText)
                }
            }
            .sink { [weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
            }
            .store(in: &cancellables)
    }
    
}
