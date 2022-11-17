//
//  MainView.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Anne Victoria Batista Auzier on 17/11/22.
//

import SwiftUI

struct MainView: View {
    @State var estado: Int = 0
    var body: some View {
        ZStack {
            Button(action: {
                self.estado = 1
            }, label: {
                Text("click me")
            })
            if estado == 1{
                TransitionView(endScreenAction: {estado = 0})
            }
        }
        
    }
    
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
