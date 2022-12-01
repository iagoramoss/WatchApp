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
    
    init(mealType: MealType, eatingDuration: TimeInterval) {
        self.mealType = mealType
        self.eatingDuration = eatingDuration
    }
    
    func getAdvice() -> Advice{
        let minimumDuration = mealType == .short ? 10 : 20
        return eatingDuration.minutes < minimumDuration ? .tooFast : .ideal
    }
}
