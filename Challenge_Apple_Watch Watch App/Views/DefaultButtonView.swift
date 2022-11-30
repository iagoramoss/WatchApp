//
//  AlertButtonView.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Iago Ramos on 18/11/22.
//

import Foundation
import SwiftUI

struct DefaultButtonView<Content: View>: View{
    let width: CGFloat
    let height: CGFloat
    let cornerRadius: CGFloat
    let action: () -> ()
    let label: () -> Content
    
    var body: some View{
        Button(action: {
            self.action()
        },label: {
            label()
        })
        .frame(width: self.width, height: self.height)
        .buttonBorderShape(.capsule)
        .background(Color.colorButton)
        .cornerRadius(cornerRadius)
        .padding([.leading, .trailing], 6)
    }
}
