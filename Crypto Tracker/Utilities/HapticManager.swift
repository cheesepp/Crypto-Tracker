//
//  HapticManager.swift
//  Crypto Tracker
//
//  Created by Mac on 03/08/2024.
//

import Foundation
import SwiftUI
class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
