//
//  UIApplication.swift
//  Final Project (Kuwait Codes)
//
//  Created by Mohammed Alqattan on 09/04/2022.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
