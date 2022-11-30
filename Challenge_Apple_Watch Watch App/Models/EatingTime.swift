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

    var duration: TimeInterval?
    
    func startEating(){
        self.initialTime = Date()
    }
    
    func stopEating(){
        self.finalTime = Date()
        self.getEatingMinutes()
    }
    
    private func getEatingMinutes(){
        if let initialTime = self.initialTime, let finalTime = self.finalTime{
            let distance = initialTime.distance(to: finalTime) + 1
            self.duration = distance
        }
    }
}
