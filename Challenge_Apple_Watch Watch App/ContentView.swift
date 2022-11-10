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
                
            
                
//                if dateComps.second! == 1 {
//
//
//                }
                
//                if moveDetection.yaw > 0.0 && moveDetection.roll > 0.0  {
//
//                    print("Fim: boca")
//                }
//                if moveDetection.yaw < 0.0 && moveDetection.roll < 0.0 {
//
//                    print("Inicio - mesa -> boca")
//                }
                
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
                        Text("Yaw: \(String(format: "%.2f", self.moveDetection.yaw))")
                        Spacer()
                        Text("Roll: \(String(format: "%.2f", self.moveDetection.roll))")
                        Spacer()
                        Text("pitch: \(String(format: "%.2f", self.moveDetection.pitch))")
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
