//
//  Meals.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Iago Ramos on 29/11/22.
//

import Foundation

class Meal{
    var type: MealType?
    private let eatingTime = EatingTime()
    
    func startEating(){
        self.eatingTime.startEating()
    }
    
    func getAdvice() -> Advice?{
        let duration = self.eatingTime.getEatingMinutes()
        
        if let type = self.type, let duration = duration{
            let eatingAdvice = EatingAdvice(mealType: type, eatingDuration: duration)
            return eatingAdvice.getAdvice()
        }
        
        return nil
    }
}
