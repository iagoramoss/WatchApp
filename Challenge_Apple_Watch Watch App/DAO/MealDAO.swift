//
//  MealDAO.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Iago Ramos on 30/11/22.
//

import Foundation

class MealDAO: ObservableObject{
    let meal: Meal = Meal()
    
    var updateAdviceTimer: Timer?
    @Published var advice: Advice?
    
    func startEating(){
        self.meal.startEating()
    }
    
    func startAdviceUpdates(){
        self.updateAdviceTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateAdvice), userInfo: nil, repeats: true)
    }
    
    func stopAdviceUpdates(){
        self.updateAdviceTimer?.invalidate()
        self.updateAdviceTimer = nil
    }
    
    @objc func updateAdvice(){
        self.advice = self.meal.getAdvice()
    }
}
