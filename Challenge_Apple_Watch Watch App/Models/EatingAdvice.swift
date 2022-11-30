//
//  EatingAdvice.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Iago Ramos on 29/11/22.
//

import Foundation

class EatingAdvice{
    let mealType: MealType
    let eatingDuration: TimeInterval
    
    var title: String?
    var text: String?
    
    init(mealType: MealType, eatingDuration: TimeInterval) {
        self.mealType = mealType
        self.eatingDuration = eatingDuration
    }
    
    func getAdvice(){
        let minimumDuration = mealType == .short ? 10 : 20
        
        if(eatingDuration.minutes < minimumDuration){
            self.title = "Você está comendo rápido demais!"
            self.text = "Tente descansar os talheres no prato algumas vezes, para que possa mastigar sem pressa."
            
            return
        }
        
        self.title = "Você se alimenta em um tempo ideal!"
        self.text = "Muito bem! isso é fundamental para apreciar a sua refeição, continue assim!"
    }
}
