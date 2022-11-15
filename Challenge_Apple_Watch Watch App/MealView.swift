//
//  MealView.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Dessana Santos on 14/11/22.
//

import SwiftUI
import UIKit

struct MealView: View {
    var body: some View {
       
        
        VStack {
            Text("Meal View")
                .padding()
            
            Button(action: {
                
                WKInterfaceDevice.current().play(.start)
//                WKInterfaceDevice.current().
//                self.WKHapticType.click
//                WKHapticType.start
//                WKApplicationState
                
                
                WKApplicationState.background.self
            }, label: {
                
                Text("Tap Me")
            })
        }
    }
    
   
}

struct MealView_Previews: PreviewProvider {
    static var previews: some View {
        MealView()
    }
}
