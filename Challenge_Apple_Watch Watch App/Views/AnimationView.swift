//
//  ContentView.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Dessana Santos on 07/11/22.
//

import SwiftUI

struct AnimationView: View {
    
    var body: some View {
        ZStack {
            Text("Página de Animação")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .padding()
//        .tabViewStyle(.page)
    }
}
struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}





