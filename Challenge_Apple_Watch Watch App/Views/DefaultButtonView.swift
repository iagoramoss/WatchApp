//
//  AlertButtonView.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Iago Ramos on 18/11/22.
//

import Foundation
import SwiftUI

struct DefaultButtonView: View{
    let text: String
    let width: CGFloat
    let height: CGFloat
    let cornerRadius: CGFloat
    let action: () -> ()
    
    var body: some View{
        Button(action: {
            self.action()
        },label: {
            Text(self.text)
                .frame(width: 140, height: 120, alignment: .center)
//                .font(.system(size: 17.0))
                .font(.subheadline)
        })
        .frame(width: self.width, height: self.height)
        .buttonBorderShape(.capsule)
        .background(Color.colorButton)
        .cornerRadius(cornerRadius)
        .padding([.leading, .trailing], 6)
    }
}
