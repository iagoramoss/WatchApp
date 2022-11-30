//
//  Meals.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Iago Ramos on 29/11/22.
//

import Foundation
import Combine

class Meal: ObservableObject{
    var type: MealType?
    private let eatingTime = EatingTime()
    
    var adviceTitle: String?
    var adviceText: String?
    
    @Published var presentAdvice: Bool = false
    
    func startEating(){
        self.eatingTime.startEating()
    }
    
    func stopEating(){
        self.eatingTime.stopEating()
        
        if let mealType = self.type, let duration = self.eatingTime.duration{
            let eatingAdvice = EatingAdvice(
                mealType: mealType,
                eatingDuration: duration
            )
            
            eatingAdvice.getAdvice()
            
            if let title = eatingAdvice.title, let text = eatingAdvice.text{
                self.adviceTitle = title
                self.adviceText = text
                
                self.presentAdvice.toggle()
            }
        }
    }
}
