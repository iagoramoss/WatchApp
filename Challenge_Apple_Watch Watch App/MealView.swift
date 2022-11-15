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
    @State var alertTimer: Timer?
    @State var buttonBoolean = false
    @State var alertBoolean = false

    

    var body: some View {
       

        VStack {
            Text("Meal View")
                .padding()
            
         /*
            Button("show alert") {
                buttonBoolean = true
            } .alert(isPresented: $buttonBoolean) {
                
                    Alert(
                        title: Text("hello deuses"),
                        message: Text("este é o alerta"),
                        dismissButton: nil
//                        public init(
//                            title: Text,
//                            message: Text? = nil,
//                            dismissButton: Alert.Button? = nil
//                        )
//
//                        title: Text("hello deuses")
//                        title: Text("Hello deuses")
                        
//                        dismissButton: Alert.Button?.Type = nil
                    
                    )
                
                
            }
            */
//            NavigationView {
//
//                NavigationLink("olá", destination: AlertView())
//
//            }
            Button("\(buttonBoolean ? "Parar" : "Iniciar")") {
                    
                    if alertBoolean == false {
                        
                        self.alertTimer = Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { timer in
                            
                            alertBoolean = true
                            
                        }
                        } else {
                            
                            alertTimer?.invalidate()
                            alertBoolean = false
                       
                    }
                    
                    if buttonBoolean == false {
                        self.timer = Timer.scheduledTimer(withTimeInterval: 4.5, repeats: true) { timer in
                            WKInterfaceDevice.current().play(.start)
                     
                        }
                        
//                        buttonName = "Parar"
                        buttonBoolean = true
                    
                        
                    } else {
                        
//                        buttonName = "Iniciar"
                        buttonBoolean = false
                        timer?.invalidate()
                    }
    //                WKApplicationState.background.self
                } .alert(isPresented: $alertBoolean) {
                    Alert(
                        title: Text("Você está comendo rápido demais!"),
                        message: Text("Tente descansar os talheres no prato algumas vezes, para que possa mastigar sem pressa."),
                        dismissButton: .cancel(alertTimer?.invalidate)
//                        dismissButton: .cancel(alertTimer?.invalidate),
                        
                    
                    )
                    
                }
            
            Button("Parar") {
                
                buttonBoolean = false
                timer?.invalidate()
                
            }
            
        }
    }
    
   
}

struct MealView_Previews: PreviewProvider {
    static var previews: some View {
        MealView()
    }
}
