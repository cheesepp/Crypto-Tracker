//
//  UIApplication.swift
//  Crypto Tracker
//
//  Created by Mac on 28/07/2024.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
