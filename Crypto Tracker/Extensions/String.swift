//
//  String.swift
//  Crypto Tracker
//
//  Created by Mac on 03/08/2024.
//

import Foundation

extension String {
    
    var removingHTMLOccurences: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
