//
//  ContentView.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Dessana Santos on 07/11/22.
//

import SwiftUI

struct ContentView: View {
    @State private var log = false
    @StateObject var moveDetection = MoveDetection()
    
    var body: some View {
        VStack {
            Button(action: {
                self.log.toggle()
                
                if self.log {
                    self.moveDetection.startUpdate()
                }
                else {
                    self.moveDetection.stopUpdate()
                    
                }
            }) {
                if self.log {
                    Image(systemName: "pause.circle")
                }
                else {
                    Image(systemName: "play.circle")
                }
            }
            
            VStack {
                VStack {
                    Text("Device Motion").font(.headline)
                    HStack {
                        Text(String(format: "%.2f", self.moveDetection.yaw))
                        Spacer()
                        Text(String(format: "%.2f", self.moveDetection.roll))
                        Spacer()
                        Text(String(format: "%.2f", self.moveDetection.pitch))
                    }.padding(.horizontal)
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
