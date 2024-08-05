//
//  CircleButtonAnimationView.swift
//  Crypto Tracker
//
//  Created by Mac on 27/07/2024.
//

import SwiftUI

struct CircleButtonAnimationView: View {
    
    @Binding var animate: Bool
    
    var body: some View {
        Circle().stroke(lineWidth: 5)
            .scale(animate ? 1 : 0)
            .opacity(animate ? 0 : 1)
            .animation(animate ? .easeOut(duration: 1) : .none, value: animate)
            .onAppear {
                animate.toggle()
            }
    }
}

struct CircleButtonAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonAnimationView(animate: .constant(false))
    }
}
