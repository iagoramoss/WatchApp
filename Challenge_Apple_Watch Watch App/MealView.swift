//
//  MealView.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Dessana Santos on 14/11/22.
//

import SwiftUI
//import UIKit

struct MealView: View {
    
    @State var timer: Timer?
    @State var buttonBoolean = false
    
    var body: some View {
       
        
        VStack {
            Text("Meal View")
                .padding()
            
            Button(action: {
                
                if buttonBoolean == false {
                    self.timer = Timer.scheduledTimer(withTimeInterval: 1.5, repeats: true) { timer in
                        WKInterfaceDevice.current().play(.start)
                        //                WKInterfaceDevice.current().
                        //                self.WKHapticType.click
                        //                WKHapticType.start
                        //                WKApplicationState\
                    }
                    buttonBoolean = true
                } else {
                    
                    buttonBoolean = false
                    timer?.invalidate()
                }
//                WKApplicationState.background.self
            }, label: {
                
               if buttonBoolean == false {
                    Text("Iniciar")
                } else {
                    Text("Parar")
//                    timer?.invalidate()
                }
              
            })
        }
    }
    
   
}

struct MealView_Previews: PreviewProvider {
    static var previews: some View {
        MealView()
    }
}
