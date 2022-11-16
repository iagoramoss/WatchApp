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
   @State var texto = ""
    @State var count = 0
//    func parar() -> Timer {
//        
//        return alertTimer?.invalidate
//    }

    var body: some View {
       
      

        VStack {
            Text("Meal View")
                .padding()
            
            
            
             
             // TESTANDO O FRAME APARECER
             GeometryReader {
                 geometry in
                 
                     ZStack {
                         VStack(alignment: .center, spacing: 1.0){
                             
                             Text(alertBoolean ? "Texto aqui" : "")
                                 .font(.headline)
                                 .padding(.top, 5.0)
//                             Spacer()
                             Text(alertBoolean ? "Este é o texto do alerta do que deve ser feito, portanto coloque aqui os mínimos detalhes." : "")
                                 
//                                 .lineLimit(2)
//                                 .minimumScaleFactor(0.5)
                                 .font(.footnote)
//
//                                 .multilineTextAlignment(.leading)
                                 .padding()
             
                         }
//                         Color.gray
    //                         .edgesIgnoringSafeArea(.all)
                     }
                     .frame(maxWidth: geometry.size.width * 1, maxHeight: 100)
                     .background(alertBoolean ? Color.gray : nil)
                     .overlay (
                         if alertBoolean {
                             ZStack {
                                 Color(white: 0, opacity: 0.75)
//                                 HomeView().tint(.white)
                             }
                         )
//                     .animation(nil, value: alertBoolean)
//                     .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: alertBoolean)
                     .edgesIgnoringSafeArea(.all)
                     .cornerRadius(5)
    //                 .background()
                     .offset(CGSize(width: geometry.size.width * 0 , height: geometry.size.height * -0.1))
                 }
 //
             

             
                        
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
                        
                        self.alertTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
                            
                            alertBoolean = true
//                            alertBoolean.toggle()
                            count += 3
                            
                            if count == 12 {
                                
                                
                                alertTimer?.invalidate() // a depender do contexto
                                count = 0
                                alertBoolean = false

                                
                            }
                            
                        }
                        }
                /*
                else {
                            
//                            alertTimer?.invalidate()
                            alertBoolean = false
                       
                    } */
                 
                    
                    if buttonBoolean == false {
                        self.timer = Timer.scheduledTimer(withTimeInterval: 4.5, repeats: true) { timer in
                            WKInterfaceDevice.current().play(.notification)
                     
                        }
                        
//                        buttonName = "Parar"
                        buttonBoolean = true
                    
                        
                    } else {
                        
//                        buttonName = "Iniciar"
                        buttonBoolean = false
                        timer?.invalidate()
                    }
    //                WKApplicationState.background.self
                }
            
            /*
            .alert(isPresented: $alertBoolean) {
                
                    Alert(
                        
                        title: Text("Você está comendo rápido demais!").italic(),
                        message: Text("Tente descansar os talheres no prato algumas vezes, para que possa mastigar sem pressa."),
                        dismissButton: .cancel(alertTimer?.invalidate)
                        
//                        dismissButton: .cancel(alertTimer?.invalidate),
                        
                    
                    )
                    
                }
             */
             
            
            Button("Parar") {
                
//                alertBoolean = false // a depender do contexto
                buttonBoolean = false
                timer?.invalidate()
//                alertTimer?.invalidate() // a depender do contexto
                
            }
            
             
        }
    }
    
   
}

struct MealView_Previews: PreviewProvider {
    static var previews: some View {
        MealView()
    }
}
