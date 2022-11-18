//
//  TestView.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Anne Victoria Batista Auzier on 16/11/22.
//

import SwiftUI

struct TransitionView: View {
    var closeViewAction: () -> ()
    var body: some View {
        ZStack{
            TabView {
                AnimationView()
                StopEatingView(nextViewAction: closeViewAction)
            }
            .tabViewStyle(.page)
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black)
    }
}

struct TransitionView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionView(closeViewAction: {})
    }
}
