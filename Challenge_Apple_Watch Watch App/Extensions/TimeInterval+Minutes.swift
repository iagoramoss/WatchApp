//
//  TimeInterval+Minute.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Iago Ramos on 17/11/22.
//

import Foundation

extension TimeInterval{
    var minutes: Int{
        return Int((self/60).truncatingRemainder(dividingBy: 60))
    }
}
