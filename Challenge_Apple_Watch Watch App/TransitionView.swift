//
//  TestView.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Anne Victoria Batista Auzier on 16/11/22.
//

import SwiftUI

struct TransitionView: View {
    var body: some View {
        TabView{
            AnimationView()
            StopEatingView()
        }
        .tabViewStyle(.page)
    }
}

struct TransitionView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionView()
    }
}
