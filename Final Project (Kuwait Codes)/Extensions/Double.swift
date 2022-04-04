//
//  Double.swift
//  Final Project (Kuwait Codes)
//
//  Created by Mohammed Alqattan on 04/04/2022.
//

import Foundation

extension Double {
    
    /// changes a double to a currency with 2 digits after the decimal instead of a lot of zeros
    
    private var currencyFormatter2: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    
    /// changes a double into a currency as a string with 2-6 decimal points
    
    func asCurrencyWith2Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter2.string(from: number) ?? "$0.00"
    }
    
    /// changes a double to a currency with 2-6 digits after the decimal instead of a lot of zeros
    
    private var currencyFormatter6: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        return formatter
    }
    
    
    /// changes a double into a currency as a string with 2-6 decimal points
    
    func asCurrencyWith6Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter6.string(from: number) ?? "$0.00"
    }
    
    
    /// changes a double into a string
    
    func asNumberString() -> String {
        return String(format: "%.2f", self)
    }
    
    /// changes a double into a string with percent symbol

    func asPercentString() -> String{
        return asNumberString() + "%"
    }
}
