//
//  MoveDetection.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Iago Ramos on 07/11/22.
//

import Foundation
import Combine
import CoreMotion

// MARK: Dados dos testes de movimento do braço do Iago (foram feitos 5 testes para cada condição):

// Yaw - Abrir e fechar o braço no sentido horizontal
// Roll - Abrir e fechar o braço no sentido vertical
// Pitch - Rotação do braço

// Média (dos módulos) de variação do Yaw: 1.334
// Média (dos módulos) de variação do Roll: 1.082
// Média (dos módulos) de variação do Pitch: 0.936

// (initialPitch > finalPitch)
// (initialPitch = 0.0)
// (finalPitch < 0.0)


// MARK: Braço direito:
//      (initialRoll < finalRoll)

//      MARK: Prato -> Boca:
//          (initialYaw < finalYaw)
//      MARK: Boca -> Prato:
//          (initialYaw > finalYaw)


// MARK: Braço esquedo:
//      MARK: Prato -> Boca:
//          (initialYaw > finalYaw)
//          (initialRoll > finalRoll)

//      MARK: Boca -> Prato:
//          (initialYaw > finalYaw)
//          (initialRoll < finalRoll)

class MoveDetection: ObservableObject{
    var motionManager = CMMotionManager()
    var motionQueue = OperationQueue()
    private var freq = 60.0
    
    @Published var pitch = 0.0
    @Published var yaw = 0.0
    @Published var roll = 0.0
    
    private var initialYaw: Double?
    private var finalYaw: Double?
    
    private var initialRoll: Double?
    private var finalRoll: Double?
    
    private var initialPitch: Double?
    private var finalPitch: Double?
    
    // Quando inicia, um timer de 5 segundos é ativado pra dar um stop no device motion
    func startUpdate() {
        Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(self.stopUpdate), userInfo: nil, repeats: false)
        
        if(motionManager.isDeviceMotionAvailable){
            motionManager.startDeviceMotionUpdates(to: motionQueue) { (data: CMDeviceMotion?, error: Error?) in
                guard let data = data else {
                    print("Error: \(error!)")
                    return
                }
                
                let motion: CMAttitude = data.attitude
                self.motionManager.deviceMotionUpdateInterval = 1 / self.freq
                
                DispatchQueue.main.async {
                    self.yaw = motion.yaw
                    self.roll = motion.roll
                    self.pitch = motion.pitch
                    
                    if(self.initialYaw == nil){
                        self.initialYaw = self.yaw
                        self.initialRoll = self.roll
                        self.initialRoll = self.pitch
                    }
                    
//                    print("=============================")
//                    print("Pitch: \(self.pitch)\nYaw: \(self.yaw)\nRoll: \(self.roll)")
//                    print("=============================")
                }
            }
        }
    }
    
    // Quando dá stop, eu comparo os valores iniciais e finais pra saber quais são as mudanças
    @objc func stopUpdate() {
        if(motionManager.isDeviceMotionActive){
            motionManager.stopDeviceMotionUpdates()
            self.finalYaw = self.yaw
            self.finalRoll = self.roll
            self.finalPitch = self.pitch
            
            print("\n\n\n")
            print("=============================")
            print("Initial Yaw: \(self.initialYaw ?? 0.0)\nFinal Yaw: \(self.finalYaw ?? 0.0)")
            print("Initial Roll: \(self.initialRoll ?? 0.0)\nFinal Roll: \(self.finalRoll ?? 0.0)")
            print("Initial Pitch: \(self.initialPitch ?? 0.0)\nFinal Pitch: \(self.finalPitch ?? 0.0)")
            print("=============================")
            
            self.initialYaw = nil
            self.finalYaw = nil
            
            self.initialRoll = nil
            self.finalRoll = nil
            
            self.initialPitch = nil
            self.finalPitch = nil
        }
    }
}
