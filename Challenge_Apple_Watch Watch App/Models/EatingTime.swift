//
//  EatingTime.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Iago Ramos on 17/11/22.
//

import Foundation
import Combine

class EatingTime: ObservableObject{
    private var initialTime: Date?
    private var finalTime: Date?
    
    var adviceTitle: String?
    var adviceText: String?
    
    @Published var presentAdvice: Bool = false
    
    func initEating(){
        self.initialTime = Date()
    }
    
    @objc func stopEating(){
        self.finalTime = Date()
        self.getEatingMinutes()
        
        self.presentAdvice.toggle()
    }
    
    private func getEatingMinutes(){
        if let initialTime = self.initialTime, let finalTime = self.finalTime{
            let distance = initialTime.distance(to: finalTime) + 1
            
            if(distance.minutes < 20){
                self.adviceTitle = "Você está comendo rápido demais!"
                self.adviceText = "Tente descansar os talheres no prato algumas vezes, para que possa mastigar sem pressa."
                
                return
            }
            
            self.adviceTitle = "Você se alimenta em um tempo ideal!"
            self.adviceText = "Muito bem, isso é fundamental para apreciar o seu alimento, continue assim!"
        }
    }
}
