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
    
    @Published var eatingMinutes: Int = 0
    
    func initEating(){
        self.initialTime = Date()
        self.eatingMinutes = 0
    }
    
    @objc func stopEating(){
        self.finalTime = Date()
        self.getEatingMinutes()
    }
    
    private func getEatingMinutes(){
        if let initialTime = self.initialTime, let finalTime = self.finalTime{
            let distance = initialTime.distance(to: finalTime) + 1
            self.eatingMinutes = distance.minutes
        }
    }
}
