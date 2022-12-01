//
//  EatingTime.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Iago Ramos on 17/11/22.
//

import Foundation

class EatingTime{
    private var initialTime: Date?
    private var finalTime: Date?
    
    func startEating(){
        self.initialTime = Date()
    }
    
    func getEatingMinutes() -> TimeInterval?{
        self.finalTime = Date()
        
        if let initialTime = self.initialTime, let finalTime = self.finalTime{
            return initialTime.distance(to: finalTime) + 1
        }
        
        return nil
    }
}
