//
//  ContentView.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Dessana Santos on 07/11/22.
//

import SwiftUI

struct AnimationView: View {
    
    @State var angle: Double = 0.0
    @State var isAnimating = false
    
    var foreverAnimation: Animation {
        Animation.linear(duration: 7.0)
            .repeatForever(autoreverses: false)
    }
    
    var body: some View {
        
        Image("Food")
            .rotationEffect(Angle(degrees: self.isAnimating ? -360.0 : 0.0))
            .animation(self.foreverAnimation)
            .onAppear {
                self.isAnimating = true
                
            }
        
        Image("Food")
            .rotationEffect(Angle(degrees: self.isAnimating ? -360.0 : 0.0))
            .animation(self.foreverAnimation)
            .onAppear {
                self.isAnimating = true
                
            }
    }
}
struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}





